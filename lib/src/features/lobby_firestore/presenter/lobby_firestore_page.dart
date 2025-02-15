import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../clock/bloc/clock_cubit.dart';
import '../../lobby/presenter/model/participants_mode.dart';
import '../../lobby/presenter/view/chat_participants.dart';
import '../../lobby/presenter/view/game_participants.dart';
import '../../lobby/presenter/view/lobby_participants.dart';
import '../../minigame_setup/bloc/minigame_setup_cubit.dart';
import '../../minigame_setup/presenter/minigame_starter_page.dart';
import '../bloc/firebase_listeners/game_players_collection_listener.dart';
import '../bloc/firebase_listeners/lobby_players_collection_listener.dart';
import '../bloc/firestore_chat_cubit.dart';
import 'firestore_game_page.dart';
import 'widget/lobby_firestore_header.dart';
import 'widget/perform_minigame_content.dart';
import 'widget/poll_minigame_content.dart';

class LobbyFirestorePage extends StatelessWidget {
  const LobbyFirestorePage({super.key, this.showChat = true});

  final bool showChat;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ClockCubit(),
        ),
        BlocProvider(
          create: (context) => FirestoreChatCubit(),
        ),
      ],
      child: Column(
        children: [
          const LobbyPlayersCollectionListener(),
          const GamePlayersCollectionListener(),
          const LobbyFirestoreHeader(),

          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 6,
                  child: Column(
                    children: [
                      MinigameStarterPage(),
                      showChat
                          ? const Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: GameParticipants(
                                      mode: ParticipantsMode.firebase,
                                    ),
                                  )),
                                  Expanded(
                                      child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    child: LobbyParticipants(
                                      mode: ParticipantsMode.firebase,
                                    ),
                                  )),
                                  Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: ChatParticipants(
                                          mode: ParticipantsMode.firebase,
                                        ),
                                      )),
                                ],
                              ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
                Expanded(
                  // Container where minigames will be displayed
                  child: Container(
                    color: Colors.green,
                    child: Center(child:
                        BlocBuilder<MinigameSetupCubit, MinigameSetupState>(
                      builder: (context, state) {
                        return state.status.maybeMap(
                          poll: (_) {
                            return const PollMinigameContent();
                          },
                          perform: (_) {
                            return const PerformMinigameContent();
                          },
                          orElse: () {
                            return Text('Minigames');
                          },
                        );
                      },
                    )),
                  ),
                ),
                const FirestoreGamePage(),
              ],
            ),
          ),
          // Flexible(child: GameDebugPage()),
        ],
      ),
    );
  }
}
