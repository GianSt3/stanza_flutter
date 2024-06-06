import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stanza_scrapper/src/features/game/presenter/game_debug_page.dart';
import 'package:stanza_scrapper/src/features/game/presenter/game_page.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/widget/chat_partecipants.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/widget/game_participants.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/widget/lobby_header.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/widget/lobby_participants.dart';

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
                Flexible(flex: 1, child: ChatParticipants()),
                Flexible(child: LobbyParticipants()),
                Flexible(child: GameParticipants()),
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
