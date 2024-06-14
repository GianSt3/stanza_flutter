import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stanza_scrapper/bloc/model/message.dart';
import 'package:path/path.dart' as p;
import 'package:stanza_scrapper/bloc/scrapper/mock_messages.dart';
import 'package:stanza_scrapper/utils/logger.dart';

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

  void start(String? liveId) async {
    if (liveId != null && liveId.isNotEmpty) {
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
    } else {
      logger.d("Mock youtube");
      final messages = await randomMessages(numberMessages: 5);
      emit(state.copyWith(
          status: const YoutubeScrapperStatus.reading(),
          chat: state.chat.copyWith(messages)));
      mockRead();
    }
  }

  void mockRead() async {
    final messages = await randomMessages(numberMessages: Random().nextInt(2));
    emit(state.copyWith(
        status: const YoutubeScrapperStatus.reading(),
        chat: state.chat.copyWith(messages)));

    // Loop
    Timer(Duration(seconds: 1 + Random().nextInt(5)), mockRead);
  }

  void read() async {
    final result = await webview.evaluateJavaScript("""
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
      final jsn = jsonDecode(result);
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
}
