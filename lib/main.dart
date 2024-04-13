import 'dart:convert';

import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main(List<String> args) {
  debugPrint('args: $args');
  if (runWebViewTitleBarWidget(args)) {
    return;
  }
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final url = "https://www.youtube.com/live_chat?is_popout=1&v=jfKfPfyJRdk";
  bool? _webviewAvailable;
  Webview? webview;
  Set<Message> _messages = Set();

  @override
  void initState() {
    super.initState();
    WebviewWindow.isWebviewAvailable().then((value) {
      setState(() {
        _webviewAvailable = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Daje ${_messages.length}"),
          actions: [
            TextButton(
                onPressed: () async {
                  webview = await WebviewWindow.create(
                    configuration: CreateConfiguration(
                      windowHeight: 500,
                      windowWidth: 720,
                      title: "Live Chat $url",
                      titleBarTopPadding: 0,
                      userDataFolderWindows: await _getWebViewPath(),
                    ),
                  );
                  webview!.launch(url);
                },
                child: Text("Run")),
            TextButton(
                onPressed: () async {
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

        // Construct an object containing the values
        var messageData = {
            id: messageId,
            timestamp: timestamp,
            author: author,
            text: messageContent
        };
      messageList.push(messageData);
  });
  return messageList;

} 
test();
""");
                  final jsn = jsonDecode(result!);
                  final messages = (jsn as List)
                      .map((e) => Message(
                          id: e["id"],
                          timestamp: e["timestamp"],
                          author: e["author"],
                          text: e["text"]))
                      .toList();
                  setState(() {
                    _messages.addAll(messages);
                  });
                  print("Result $messages");
                },
                child: Text("Read")),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _messages.map((e) => Text(e.toString())).toList(),
          ),
        ),
      ),
    );
  }

  Future<String> _getWebViewPath() async {
    final document = await getApplicationDocumentsDirectory();
    return p.join(
      document.path,
      'desktop_webview_window',
    );
  }
}

class Message extends Equatable {
  final String id;
  final String timestamp;
  final String author;
  final String text;

  const Message(
      {required this.id,
      required this.timestamp,
      required this.author,
      required this.text});

  @override
  List<Object?> get props => [id];

  @override
  String toString() {
    return "$timestamp $author: $text";
  }
}
