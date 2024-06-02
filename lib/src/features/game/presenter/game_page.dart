import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/queued_messages/queued_messages_cubit.dart';
import 'package:stanza_scrapper/src/features/game/widget/game_message_queue_listener.dart';
import 'package:stanza_scrapper/src/features/game/widget/player_header.dart';

import '../model/player.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GameMessageQueueListener(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<GameCubit, GameState>(
              builder: (context, state) {
                return Text(
                  "Game ${state.status.maybeMap(start: (_) => "🔊", orElse: () => "🔇")}",
                  style: Theme.of(context).textTheme.titleLarge,
                );
              },
            ),
            const SizedBox(
              height: 32,
            ),
            BlocBuilder<GameCubit, GameState>(
              builder: (context, gameState) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: gameState.players
                      .map((player) => GamePlayer(
                            player: player,
                          ))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GamePlayer extends StatelessWidget {
  final Player player;

  const GamePlayer({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PlayerHeader(player: player),
            BlocBuilder<QueuedMessagesCubit, QueuedMessagesState>(
              builder: (context, state) {
                return Text(state.lastPlayerMessages[player] ?? "");
              },
            ),
          ],
        ),
      ),
    );
  }
}
