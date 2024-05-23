import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';

import '../model/player.dart';

class GameDebugPage extends StatelessWidget {
  const GameDebugPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, gameState) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: gameState.players
              .map((player) => _Player(player: player))
              .toList(),
        );
      },
    );
  }
}

class _Player extends StatelessWidget {
  final Player player;

  const _Player({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<YoutubeScrapperCubit, YoutubeScrapperState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final lastMessage = state.lastMessage(player.name);
        return SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...state.chat.messages
                .where((message) => message.author == player.name)
                .map((playerMessage) => Text(
                    "${playerMessage.timestamp} ${playerMessage.text.substring(0, playerMessage.text.length > 20 ? 20 : playerMessage.text.length)}"))
                .toList(),
            Text(
              "${lastMessage.timestamp} ${lastMessage.text}",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.red),
            ),
          ],
        ));
      },
    );
  }
}
