import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:eleven_labs/eleven_labs.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_cubit.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';

import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/dnd/bloc/game/dnd_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/settings_page.dart';
import 'package:stanza_scrapper/src/features/tweak/tweak_page.dart';
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

  int currentPageIndex = 0;
  ElevenLabsAPI elevenLabsAPI = ElevenLabsAPI();

  @override
  void initState() {
    super.initState();

    WebviewWindow.isWebviewAvailable().then((value) {
      print("available!");
    });
    const apiKey = String.fromEnvironment('ELEVENLABS_API_KEY');
    print('Api key ELEVENLABS $apiKey');
    elevenLabsAPI.init(config: ElevenLabsConfig(apiKey: apiKey));
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
            create: (context) => ElevenLabsCubit(elevenLabsAPI),
          ),
          BlocProvider(
            create: (context) => ElevenLabsVoiceCubit(elevenLabsAPI),
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
              drawer: IntrinsicWidth(
                child: NavigationRail(
                  onDestinationSelected: (index) => setState(() {
                    currentPageIndex = index;
                  }),
                  destinations: [
                    NavigationRailDestination(
                        icon: Icon(Icons.home), label: Text("Home")),
                    NavigationRailDestination(
                        icon: Icon(Icons.settings), label: Text("Settings")),
                    NavigationRailDestination(
                        icon: Icon(Icons.color_lens_outlined), label: Text("Tweak")),
                  ],
                  selectedIndex: currentPageIndex,
                ),
              ),
              body: [const Stanza(), const SettingsPage(), const TweakPage()][currentPageIndex],
            );
          }),
        ),
      ),
    );
  }
}
