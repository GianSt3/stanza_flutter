import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stanza_scrapper/config/environment/environment.dart';
import 'package:stanza_scrapper/core/api_key_guard.dart';
import 'package:stanza_scrapper/core/bloc/api_key/api_key_cubit.dart';
import 'package:stanza_scrapper/core/bloc/api_quota/api_quota_cubit.dart';
import 'package:stanza_scrapper/core/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/data/youtube/youtube_chat_repository.dart';
import 'package:stanza_scrapper/data/youtube/youtube_mock_chat_repository.dart';
import 'package:stanza_scrapper/domain/youtube/youtube_chat_repository_interface.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/blacklist/blacklist_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/default_voices/default_voices_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/text_to_speech/text_to_speech_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/voice/custom_voice_cubit.dart';
import 'package:stanza_scrapper/src/stanza.dart';

final injector = GetIt.instance;

void main(List<String> args) async {
  debugPrint('args: $args');
  if (runWebViewTitleBarWidget(args)) {
    return;
  }
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  injector
    ..registerSingleton<ElevenLabsInterface>(ElevenLabsAPI())
    ..registerSingleton<Environment>(EnvironmentImpl())
    ..registerSingleton<YoutubeChatRepositoryInterface>(
        injector.get<Environment>().isMockEnabled()
            ? YoutubeMockChatRepository()
            : YoutubeChatRepository());

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
      debugShowCheckedModeBanner: injector.get<Environment>().isMockEnabled(),
      theme: ThemeData(
        canvasColor: Colors.white,
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        navigationRailTheme:
            const NavigationRailThemeData(backgroundColor: Colors.white),
        listTileTheme: ListTileThemeData(
          dense: false,
          selectedTileColor: Colors.grey.shade50,
          selectedColor: Colors.grey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
        ),
        cardTheme: CardTheme(
          elevation: 0,
          color: Colors.blueGrey.shade50,
          shadowColor: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          minimumSize: const Size(200, 20),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.blueGrey.shade100,
              ),
              borderRadius: BorderRadius.circular(3)),
        )),
        dropdownMenuTheme: const DropdownMenuThemeData(
          menuStyle: MenuStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.white)),
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.zero,
            isDense: true,
          ),
        ),
        sliderTheme: Theme.of(context)
            .sliderTheme
            .copyWith(showValueIndicator: ShowValueIndicator.onlyForContinuous),
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ApiKeyCubit(),
          ),
          BlocProvider(
            create: (context) => YoutubeScrapperCubit(),
          ),
          BlocProvider(
            create: (context) => TextToSpeechCubit(),
          ),
          BlocProvider(
            create: (context) => DefaultVoicesCubit(),
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
          BlocProvider(
            create: (context) => GameMessagesCubit(),
          ),
          BlocProvider(
            create: (context) => ApiQuotaCubit(),
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
            injector
                .get<ElevenLabsInterface>()
                .init(config: ElevenLabsConfig(apiKey: apiKey));
            return const Stanza();
          },
        ),
      ),
    );
  }
}
