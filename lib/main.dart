import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/stanza.dart';

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
  TextEditingController textEditingController = TextEditingController(text: "jfKfPfyJRdk");

  bool? _webviewAvailable;

  @override
  void initState() {
    super.initState();
    WebviewWindow.isWebviewAvailable().then((value) {
      print("available!");
      setState(() {
        _webviewAvailable = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => YoutubeScrapperCubit(),
        child: Builder(
          builder: (context) =>
              BlocBuilder<YoutubeScrapperCubit, YoutubeScrapperState>(
                  builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: TextField(
                  decoration: const InputDecoration(hintText: "Live Id"),
                  controller: textEditingController,
                  onSubmitted: (text) {
                    context
                        .read<YoutubeScrapperCubit>()
                        .start(textEditingController.text);
                  },
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.start),
                    iconSize: 24,
                    onPressed: () => context
                        .read<YoutubeScrapperCubit>()
                        .start(textEditingController.text),
                  ),
                  IconButton(
                    icon: const Icon(Icons.chat_rounded),
                    color: state.status.maybeMap(
                        reading: (_) => Colors.green,
                        stop: (_) => Colors.yellow,
                        error: (_) => Colors.red,
                        orElse: () => Colors.grey),
                    iconSize: 24,
                    onPressed: state.status.mapOrNull(
                        ready: (_) =>
                            context.read<YoutubeScrapperCubit>().read),
                  ),
                ],
              ),
              body: const Stanza(),
            );
          }),
        ),
      ),
    );
  }
}
