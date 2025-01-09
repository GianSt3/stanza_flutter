import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';

class GamePlayersCollectionListener extends StatefulWidget {
  const GamePlayersCollectionListener({super.key});

  @override
  State<GamePlayersCollectionListener> createState() =>
      _GamePlayersCollectionListenerState();
}

class _GamePlayersCollectionListenerState
    extends State<GamePlayersCollectionListener> {
  late DocumentReference _firebaseDoc;

  @override
  void initState() {
    super.initState();
    _firebaseDoc = FirebaseFirestore.instance.collection("_config").doc("game");
  }

  @override
  void dispose() {
    _firebaseDoc.delete();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LobbyCubit, LobbyState>(
      listenWhen: (old, current) {
        return current.status == const LobbyStatus.promoted() ||
            current.status == const LobbyStatus.demoted();
      },
      listener: (context, state) {
        final users = state.lobby
            .where((user) => user.nextPlayer)
            .map((user) => user.name)
            .toList();
        _firebaseDoc.set({'player_users': users});
      },
      child: const SizedBox.shrink(),
    );
  }
}
