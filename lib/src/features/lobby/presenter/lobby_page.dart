import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stanza_scrapper/src/features/game/presenter/game_page.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/view/chat_participants.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/view/game_participants.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/widget/lobby_header.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/view/lobby_participants.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          children: [
            LobbyHeader(),
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
        ),
        Divider(),
        // Flexible(child: GameDebugPage()),
        Expanded(child: GamePage())
      ],
    );
  }
}
