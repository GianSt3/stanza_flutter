import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/utils.dart';
import '../../../lobby/bloc/lobby_cubit.dart';

bool _isGameUsersReset = false;

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
    _firebaseDoc = FirebaseFirestore.instance.collection('_config').doc('game');

    // Reset the player_users list on Firebase only once
    if (!_isGameUsersReset) {
      _firebaseDoc.set({'player_users': []});
      _isGameUsersReset = true;
    }
  }

  @override
  void dispose() {
    logger.d('GamePlayersCollectionListener dispose');
    _firebaseDoc.delete();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LobbyCubit, LobbyState>(
      listenWhen: (old, current) {
        return current.status == const LobbyStatus.initial() ||
            current.status == const LobbyStatus.promoted() ||
            current.status == const LobbyStatus.demoted();
      },
      listener: (context, state) {
        final users = state.lobby
            .where((user) => user.nextPlayer)
            .map((user) => user.name)
            .toList();
        _firebaseDoc.set({'player_users': users});
        logger.d('player_users $users');
      },
      child: const SizedBox.shrink(),
    );
  }
}
