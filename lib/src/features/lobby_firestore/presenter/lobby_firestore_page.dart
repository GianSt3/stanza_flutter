import 'package:flutter/material.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/view/chat_participants.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/view/game_participants.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/view/lobby_participants.dart';
import 'package:stanza_scrapper/src/features/lobby_firestore/presenter/widget/lobby_firestore_header.dart';

class LobbyFirestorePage extends StatelessWidget {
  const LobbyFirestorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  child: ChatParticipants(),
                )),
            Flexible(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: LobbyParticipants(),
            )),
            Flexible(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: GameParticipants(),
            )),
          ],
        )
      ],
    );
  }
}
