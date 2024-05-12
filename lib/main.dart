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
import 'package:stanza_scrapper/core/api_key_guard.dart';
import 'package:stanza_scrapper/core/bloc/api_key_cubit.dart';
import 'package:stanza_scrapper/src/features/dnd/bloc/game/dnd_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/blacklist/blacklist_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/custom_voice_cubit.dart';
import 'package:stanza_scrapper/src/stanza.dart';

ElevenLabsAPI elevenLabsAPI = ElevenLabsAPI();

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
  TextEditingController apiKeyController = TextEditingController();

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
          textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
          dropdownMenuTheme: Theme.of(context)
              .dropdownMenuTheme
              .copyWith(inputDecorationTheme: const InputDecorationTheme())),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ApiKeyCubit(),
          ),
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
          BlocProvider(
            create: (context) => CustomVoiceCubit(),
          ),
          BlocProvider(
            create: (context) => LobbyCubit(),
          ),
          BlocProvider(
            create: (context) => BlacklistCubit(),
          ),
          BlocProvider(
            create: (context) => GameCubit(),
          ),
        ],
        child: ApiKeyGuard(
          missing: Builder(builder: (context) {
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Insert the Api Key for IA services"),
                    TextField(
                      controller: apiKeyController,
                      obscureText: true,
                    ),
                    TextButton(
                        onPressed: () => context
                            .read<ApiKeyCubit>()
                            .store(apiKeyController.text),
                        child: const Text("Save"))
                  ],
                ),
              ),
            );
          }),
          child: (apiKey) {
            elevenLabsAPI.init(config: ElevenLabsConfig(apiKey: apiKey));
            return const Stanza();
          },
        ),
      ),
    );
  }
}
