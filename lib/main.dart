import 'package:flutter/material.dart';
import 'package:webview_windows/webview_windows.dart';
import 'package:window_manager/window_manager.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _controller = WebviewController();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: StreamBuilder(
              stream: _controller.title,
              builder: (context, snapshot) {
                return Text(
                    snapshot.hasData ? snapshot.data! : 'WebView example');
              }),
          actions: [
            TextButton(
                onPressed: () async {
                  await _controller.openDevTools();
                },
                child: Text("Dev")),
            TextButton(
                onPressed: () async {
                  final result = await _controller.executeScript(
                      "return window.document.querySelectorAll('yt-live-chat-text-message-renderer')");

                  print("Result js $result");
                },
                child: Text("Read")),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: !_controller.value.isInitialized
                    ? Text('Not Initialized')
                    : Webview(
                        _controller,
                      )),
          ],
        ),
      ),
    );
  }

  Future<void> initPlatformState() async {
    await _controller.initialize();
    final url = "https://www.youtube.com/live_chat?is_popout=1&v=jfKfPfyJRdk";
    // final url = "https://www.google.it/";
    await _controller.setBackgroundColor(Colors.transparent);
    await _controller.loadUrl(url);
    if (!mounted) {
      print('Not Mounted.');
      return;
    }

    setState(() {});
  }
}
