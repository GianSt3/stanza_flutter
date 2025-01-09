import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';

class LobbyPlayersCollectionListener extends StatefulWidget {
  const LobbyPlayersCollectionListener({super.key});

  @override
  State<LobbyPlayersCollectionListener> createState() =>
      _LobbyPlayersCollectionListenerState();
}

class _LobbyPlayersCollectionListenerState
    extends State<LobbyPlayersCollectionListener> {
  late DocumentReference _firebaseDoc;

  @override
  void initState() {
    super.initState();
    _firebaseDoc =
        FirebaseFirestore.instance.collection("_config").doc("lobby");
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
        return current.status != const LobbyStatus.promoted();
      },
      listener: (context, state) {
        final users = state.lobby.map((user) => user.name).toList();
        _firebaseDoc.set({'lobby_users': users});
      },
      child: const SizedBox.shrink(),
    );
  }
}
