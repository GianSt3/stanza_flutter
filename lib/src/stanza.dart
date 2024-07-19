import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/config/environment/environment.dart';
import 'package:stanza_scrapper/core/bloc/api_key/api_key_cubit.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';
import 'package:stanza_scrapper/domain/entities/custom_voice.dart';
import 'package:stanza_scrapper/main.dart';
import 'package:stanza_scrapper/src/features/clock/bloc/clock_cubit.dart';
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
            actions: injector.get<Environment>().isDebug()
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

                          final now = DateTime.now();

                          final messages = [
                            "The quick brown fox jumps over the lazy dog.",
                            "Innovation distinguishes between a leader and a follower. Stay creative and lead.",
                            "Success usually comes to those who are too busy to be looking for it. Keep pushing forward without looking back.",
                            "In the middle of difficulty lies opportunity. Embrace challenges as stepping stones to growth and achievement. Your perseverance will lead you to new heights.",
                            "Happiness is not something ready-made. It comes from your own actions. Cultivate positivity, act with kindness, and spread joy. Your efforts will create a ripple effect of happiness around you.",
                            "Life is a series of natural and spontaneous changes. Don't resist them; that only creates sorrow. Let reality be reality. Let things flow naturally forward in whatever way they like. Embrace change and grow with each new experience, for it leads to personal growth and wisdom."
                          ];

                          /// Add messages
                          context.read<GameMessagesCubit>().pushAll(
                              [
                                YoutubeMessage(
                                    id: 'ABC',
                                    author: players[0],
                                    avatarUrl: '',
                                    timestamp: '',
                                    created: now.millisecondsSinceEpoch,
                                    text: messages[
                                        Random().nextInt(messages.length)]),
                                YoutubeMessage(
                                    id: 'DEF',
                                    author: players[1],
                                    avatarUrl: '',
                                    timestamp: '',
                                    created: now.millisecondsSinceEpoch,
                                    text: messages[
                                        Random().nextInt(messages.length)]),
                                YoutubeMessage(
                                    id: 'GHI',
                                    author: players[2],
                                    avatarUrl: '',
                                    timestamp: '',
                                    created: now.millisecondsSinceEpoch,
                                    text: messages[
                                        Random().nextInt(messages.length)])
                              ],
                              [
                                Player(name: players[0], voice: CustomVoice()),
                                Player(name: players[1], voice: CustomVoice()),
                                Player(name: players[2], voice: CustomVoice())
                              ],
                              context.read<GameCubit>().state.status.maybeMap(
                                  mute: (_) => false, orElse: () => true));
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
            BlocProvider(
              create: (context) => ClockCubit(),
              child: const LobbyPage(),
            ),
          ][currentPageIndex],
        );
      },
    );
  }
}
