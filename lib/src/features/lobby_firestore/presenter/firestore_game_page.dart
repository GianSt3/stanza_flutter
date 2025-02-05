import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../game/bloc/game_cubit.dart';
import '../../game/bloc/messages/game_messages_cubit.dart';
import '../../game/model/audio_message.dart';
import '../../game/model/player.dart';
import '../../game/presenter/game_firestore_message_listener.dart';

class FirestoreGamePage extends StatelessWidget {
  const FirestoreGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GameFirestoreMessageListener(
        child: BlocSelector<GameCubit, GameState, bool>(
      selector: (state) =>
          state.status.maybeWhen(stop: () => false, orElse: () => true),
      builder: (context, gameStarted) {
        if (!gameStarted) {
          /// EMPTY
          return const SizedBox.shrink();
        }

        /// PLAYER MESSAGES
        return BlocBuilder<GameCubit, GameState>(
          builder: (context, state) {
            final array = List.generate(
                3, (index) => state.players.elementAtOrNull(index));

            return Column(
              children: array
                  .map((player) => player != null
                      ? _GamePlayerWidget(
                          player: player,
                        )
                      : const SizedBox.shrink())
                  .toList(),
            );
          },
        );
      },
    ));
  }
}

class _GamePlayerWidget extends StatelessWidget {
  const _GamePlayerWidget({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameMessagesCubit, GameMessagesState,
        (String text, AudioType type)>(selector: (state) {
      /// Last played player's message
      final lastMessage = state.lastPlayerMessages
          .where((element) => element.message.author == player.name)
          .firstOrNull;

      return (
        lastMessage?.message.text ?? '',
        lastMessage?.audioType ?? AudioType.textToSpeech
      );
    }, builder: (context, value) {
      return Container();
    });
  }
}
