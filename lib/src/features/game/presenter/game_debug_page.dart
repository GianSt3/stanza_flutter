import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';

import '../model/player.dart';

/// Show debug chat
class GameDebugPage extends StatelessWidget {
  const GameDebugPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, gameState) {
        return Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: gameState.players
                  .map((player) => _Player(player: player))
                  .toList(),
            ),
            BlocBuilder<YoutubeScrapperCubit, YoutubeScrapperState>(
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: state.chat.messages.reversed
                        .map((e) =>
                            Text("${e.timestamp} - ${e.author}: ${e.text}"))
                        .toList(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class _Player extends StatelessWidget {
  final Player player;
  static const int maxMessageLength = 30;

  const _Player({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YoutubeScrapperCubit, YoutubeScrapperState>(
      builder: (context, state) {
        final lastMessage = state.lastMessage(player.name);
        return SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              player.name,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.blueGrey.shade800),
            ),
            Text(
              "${lastMessage.timestamp} ${lastMessage.text}",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.red),
            ),
            ...state.chat.messages
                .where((message) => message.author == player.name)
                .toList()
                .reversed
                .take(5)
                .map((playerMessage) => Text(
                    "${playerMessage.timestamp} ${playerMessage.text.substring(0, playerMessage.text.length > maxMessageLength ? maxMessageLength : playerMessage.text.length)}"))
                .toList(),
          ],
        ));
      },
    );
  }
}
