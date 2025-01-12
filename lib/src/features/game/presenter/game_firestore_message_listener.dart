import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/utils/utils.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby_firestore/bloc/firestore_game_messages_cubit.dart';

class GameFirestoreMessageListener extends StatelessWidget {
  final Widget child;

  const GameFirestoreMessageListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameMessagesCubit, GameMessagesState>(
      listener: (context, state) {
        // Consume the audio queue
        state.status.whenOrNull(loaded: () {
          context.read<GameMessagesCubit>().pop();
        });
      },
      child: BlocProvider(
        create: (context) => FirestoreGameMessagesCubit(
            context.read<GameMessagesCubit>().pushAll,
            context.read<GameCubit>().state.mute),
        child: BlocListener<GameCubit, GameState>(
          listenWhen: (oldState, currentState) {
            return oldState.status != currentState.status ||
                oldState.players.length != currentState.players.length ||
                oldState.players.map((player) => player.name).toList() !=
                    currentState.players.map((player) => player.name).toList();
          },
          listener: (context, gameState) {
            logger.d(
                'GameState players:${gameState.players}, status:${gameState.status}');
            context.read<FirestoreGameMessagesCubit>().setParameters(
                gameState.players,
                gameState.status
                    .maybeMap(start: (_) => true, orElse: () => false));
          },
          child: child,
        ),
      ),
    );
  }
}
