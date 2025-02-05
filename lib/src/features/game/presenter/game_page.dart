import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game_cubit.dart';
import '../bloc/messages/game_messages_cubit.dart';
import 'game_youtube_message_listener.dart';
import 'widget/game_player_widget.dart';

class GamePage extends StatelessWidget {
  const GamePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const GameYoutubeMessageListener(
      child: _GamePage(),
    );
  }
}

class _GamePage extends StatelessWidget {
  const _GamePage();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<GameMessagesCubit, GameMessagesState>(
          builder: (context, gameMessageState) {
            return BlocBuilder<GameCubit, GameState>(
              builder: (context, gameState) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Game ${gameState.status.maybeMap(start: (_) => "🔊", orElse: () => "🔇")}",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      gameMessageState.status.maybeMap(
                          error: (err) => err.message, orElse: () => ''),
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.red.shade900),
                    ),
                  ],
                );
              },
            );
          },
        ),
        AspectRatio(
          aspectRatio: 1443 / 384,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('./assets/images/players_box.png'),
                  fit: BoxFit.fill),
            ),
            child: BlocBuilder<GameCubit, GameState>(
              builder: (context, state) {
                final array = List.generate(
                    3, (index) => state.players.elementAtOrNull(index));

                /// ROW OF PLAYERS
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: array
                      .map((player) => Flexible(
                            child: player != null
                                ? GamePlayerWidget(
                                    player: player,
                                  )
                                : const SizedBox.shrink(),
                          ))
                      .toList(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
