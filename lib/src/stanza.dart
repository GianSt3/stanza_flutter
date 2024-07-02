import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/bloc/api_key/api_key_cubit.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';
import 'package:stanza_scrapper/domain/entities/custom_voice.dart';
import 'package:stanza_scrapper/main.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/lobby_page.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/settings_page.dart';

class Stanza extends StatefulWidget {
  const Stanza({super.key});

  @override
  State<Stanza> createState() => _StanzaState();
}

class _StanzaState extends State<Stanza> {
  int currentPageIndex = 0;
  List<String> titles = [
    "Settings",
    "Stanza",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiKeyCubit, ApiKeyState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(titles[currentPageIndex]),
            actions: env == 'DEBUG'
                ? [
                    TextButton(
                        onPressed: () {
                          const players = [
                            'Anton De la rois',
                            'Giuseppy',
                            'Arnaldo'
                          ];

                          /// Add players
                          context.read<GameCubit>().player(
                              Player(name: players[0], voice: CustomVoice()));
                          context.read<GameCubit>().player(
                              Player(name: players[1], voice: CustomVoice()));
                          context.read<GameCubit>().player(
                              Player(name: players[2], voice: CustomVoice()));

                          /// Add messages
                          context.read<GameMessagesCubit>().pushAll([
                            YoutubeMessage(
                                id: 'ABC',
                                author: players[0],
                                avatarUrl: '',
                                timestamp: '',
                                text: 'Messaggio dal primo giocatore'),
                            YoutubeMessage(
                                id: 'DEF',
                                author: players[1],
                                avatarUrl: '',
                                timestamp: '',
                                text: 'Messaggio dal secondo giocatore'),
                            YoutubeMessage(
                                id: 'GHI',
                                author: players[2],
                                avatarUrl: '',
                                timestamp: '',
                                text: 'Messaggio dal terzo giocatore')
                          ], [
                            Player(name: players[0], voice: CustomVoice()),
                            Player(name: players[1], voice: CustomVoice()),
                            Player(name: players[2], voice: CustomVoice())
                          ]);
                        },
                        child: Text('Load mocked messages'))
                  ]
                : null,
          ),
          drawer: IntrinsicWidth(
            child: NavigationRail(
              onDestinationSelected: (index) {
                state.maybeWhen(
                    loaded: (_) => setState(() {
                          currentPageIndex = index;
                        }),
                    orElse: () => showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                              title: Text("Api KEY Not Found"),
                              icon: Icon(Icons.warning_amber),
                              content: Text(
                                  "Can't find any valid apiKey for IA services. Please insert one before any other action. "),
                            )));
              },
              destinations: [
                NavigationRailDestination(
                    icon: const Icon(Icons.settings), label: Text(titles[0])),
                NavigationRailDestination(
                    icon: const Icon(Icons.sports_esports_outlined),
                    label: Text(titles[1])),
              ],
              selectedIndex: currentPageIndex,
            ),
          ),
          body: [
            const SettingsPage(),
            const LobbyPage(),
          ][currentPageIndex],
        );
      },
    );
  }
}
