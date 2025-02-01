import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../clock/bloc/clock_cubit.dart';
import '../../game/presenter/game_page.dart';
import '../../game/presenter/model/game_mode.dart';
import '../../lobby/presenter/model/participants_mode.dart';
import '../../lobby/presenter/view/chat_participants.dart';
import '../../lobby/presenter/view/game_participants.dart';
import '../../lobby/presenter/view/lobby_participants.dart';
import '../bloc/firebase_listeners/game_players_collection_listener.dart';
import '../bloc/firebase_listeners/lobby_players_collection_listener.dart';
import '../bloc/firestore_chat_cubit.dart';
import 'widget/lobby_firestore_header.dart';

class LobbyFirestorePage extends StatelessWidget {
  const LobbyFirestorePage({super.key});

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
      child: const Column(
        children: [
          LobbyPlayersCollectionListener(),
          GamePlayersCollectionListener(),
          LobbyFirestoreHeader(),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: ChatParticipants(
                      mode: ParticipantsMode.firebase,
                    ),
                  )),
              Flexible(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0),
                child: LobbyParticipants(
                  mode: ParticipantsMode.firebase,
                ),
              )),
              Flexible(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: GameParticipants(),
              )),
            ],
          ),
          Divider(),
          // Flexible(child: GameDebugPage()),
          Flexible(
              child: GamePage(
            mode: GameMode.firebase,
          ))
        ],
      ),
    );
  }
}
