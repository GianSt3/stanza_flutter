import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stanza_scrapper/bloc/model/message.dart';
import 'package:path/path.dart' as p;

part 'youtube_scrapper_state.dart';

part 'youtube_scrapper_cubit.freezed.dart';

class YoutubeScrapperCubit extends Cubit<YoutubeScrapperState> {
  late Webview webview;

  YoutubeScrapperCubit()
      : super(const YoutubeScrapperState(
            status: YoutubeScrapperStatus.initial()));

  Future<String> _getWebViewPath() async {
    final document = await getApplicationDocumentsDirectory();
    return p.join(
      document.path,
      'desktop_webview_window',
    );
  }

  void start(String liveId) async {
    final url = "https://www.youtube.com/live_chat?is_popout=1&v=$liveId";

    webview = await WebviewWindow.create(
      configuration: CreateConfiguration(
        windowHeight: 750,
        windowWidth: 700,
        title: "Do NOT close $url",
        titleBarTopPadding: 0,
        userDataFolderWindows: await _getWebViewPath(),
      ),
    );
    webview.launch(url);
    emit(state.copyWith(status: const YoutubeScrapperStatus.ready()));
    read();
  }

  void read() async {
    final result = await webview?.evaluateJavaScript("""
function test(){ 
  var messages = document.querySelectorAll('yt-live-chat-text-message-renderer');
  var messageList = [];
  messages.forEach(function(messageElement) {
      // Extract the values
        var messageId = messageElement.getAttribute('id');
        var timestamp = messageElement.querySelector('#timestamp').textContent.trim();
        var author = messageElement.querySelector('#author-name').textContent.trim();
        var messageContent = messageElement.querySelector('#message').textContent.trim();
        const authorType = messageElement.getAttribute('author-type');
        const avatarUrl = messageElement.querySelector('yt-img-shadow img').src;

        // Construct an object containing the values
        var messageData = {
            id: messageId,
            timestamp: timestamp,
            author: author,
            authorType: authorType,
            avatarUrl: avatarUrl,
            text: messageContent
        };
      messageList.push(messageData);
  });
  return messageList;

} 
test();
""");

    if (result != null) {
      final jsn = jsonDecode(result!);
      final messages = (jsn as List).map((e) => Message.fromJson(e)).toList();

      emit(state.copyWith(
          status: const YoutubeScrapperStatus.reading(),
          chat: state.chat.copyWith(messages)));
      // Loop
      Timer(const Duration(seconds: 1), read);
    } else {
      print('Error');
      emit(state.copyWith(status: const YoutubeScrapperStatus.error()));
    }
  }

  void stop() {
    emit(state.copyWith(status: const YoutubeScrapperStatus.stop()));
  }

  void filter(String author) {
    emit(state.copyWith(
      filter: state.filter.copyWith(author),
    ));
  }
}
