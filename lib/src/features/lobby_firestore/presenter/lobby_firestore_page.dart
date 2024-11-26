import 'package:flutter/material.dart';
import 'package:stanza_scrapper/src/features/lobby_firestore/presenter/widget/lobby_firestore_header.dart';

class LobbyFirestorePage extends StatelessWidget {
  const LobbyFirestorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [LobbyFirestoreHeader()],
    );
  }
}
