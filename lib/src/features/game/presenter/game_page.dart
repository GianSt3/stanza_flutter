import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/main.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/playable_message/playable_message_cubit.dart';
import 'package:stanza_scrapper/src/features/game/widget/player_header.dart';
import 'package:stanza_scrapper/src/features/game/widget/player_text.dart';

import '../model/player.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: state.players
                    .map((player) => BlocProvider(
                          create: (context) =>
                              PlayableMessageCubit(player, elevenLabsAPI),
                          child: GamePlayer(player: player),
                        ))
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class GamePlayer extends StatelessWidget {
  final Player player;

  const GamePlayer({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PlayerHeader(player: player),
          BlocBuilder<GameCubit, GameState>(
            builder: (context, gameState) {
              return BlocListener<YoutubeScrapperCubit, YoutubeScrapperState>(
                listener: (context, state) {
                  final lastMessage = state.chat.messages
                      .where((message) => message.author == player.name)
                      .last;
                  context.read<PlayableMessageCubit>().speak(
                      timestamp: lastMessage.timestamp,
                      text: lastMessage.text,
                      shouldPlay: gameState.status
                          .maybeWhen(start: () => true, orElse: () => false));
                },
                child: const PlayerText(),
              );
            },
          ),
        ],
      ),
    );
  }
}
