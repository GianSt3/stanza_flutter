import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_cubit.dart';

import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/dnd/bloc/game/dnd_cubit.dart';
import 'package:stanza_scrapper/src/stanza.dart';

void main(List<String> args) async {
  debugPrint('args: $args');
  if (runWebViewTitleBarWidget(args)) {
    return;
  }
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController textEditingController =
      TextEditingController(text: "jfKfPfyJRdk");


  @override
  void initState() {
    super.initState();
    WebviewWindow.isWebviewAvailable().then((value) {
      print("available!");

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme)),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => YoutubeScrapperCubit(),
          ),
          BlocProvider(
            create: (context) => ElevenLabsCubit(),
          ),
          BlocProvider(
            create: (context) => DndCubit(),
          ),
        ],
        child: Builder(
          builder: (context) =>
              BlocBuilder<YoutubeScrapperCubit, YoutubeScrapperState>(
                  builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange[200],
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
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    color: Colors.green,
                    iconSize: 24,
                    onPressed: () => context.read<ElevenLabsCubit>().speak(),
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
