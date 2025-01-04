import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/src/features/clock/bloc/clock_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/model/participants_mode.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/view/chat_participants.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/view/game_participants.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/view/lobby_participants.dart';
import 'package:stanza_scrapper/src/features/lobby_firestore/bloc/firestore_chat_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby_firestore/presenter/widget/lobby_firestore_header.dart';

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
          )
        ],
      ),
    );
  }
}
