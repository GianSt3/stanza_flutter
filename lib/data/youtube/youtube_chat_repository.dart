import 'dart:convert';

import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';
import 'package:stanza_scrapper/domain/youtube/youtube_chat_repository_interface.dart';
import 'package:path/path.dart' as p;
import 'package:stanza_scrapper/utils/logger.dart';

class YoutubeChatRepository extends YoutubeChatRepositoryInterface {
  late Webview webview;

  Future<String> _getWebViewPath() async {
    final document = await getApplicationDocumentsDirectory();
    return p.join(
      document.path,
      'desktop_webview_window',
    );
  }

  @override
  Future<List<YoutubeMessage>> getMessages() async {
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
      final messages =
          (jsn as List).map((e) => YoutubeMessage.fromJson(e)).toList();

      return messages;
    } else {
      logger.e("Empty result");
      throw Exception("Empty result");
    }
  }

  @override
  Future<void> init({required String liveId}) async {
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
  }
}
