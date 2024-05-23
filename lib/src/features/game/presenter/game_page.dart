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
                          child: GamePlayer(
                            player: player,
                            play: state.status.maybeWhen(
                                start: () => true, orElse: () => false),
                          ),
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
  final bool play;

  const GamePlayer({super.key, required this.player, this.play = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PlayerHeader(player: player),
            BlocListener<YoutubeScrapperCubit, YoutubeScrapperState>(
              listener: (context, state) {
                final lastMessage = state.lastMessage(player.name);
                print("Listener ${player.toString()} last message ${lastMessage.text}");
                context.read<PlayableMessageCubit>().speak(
                    timestamp: lastMessage.timestamp,
                    text: lastMessage.text,
                    shouldPlay: play);
              },
              child: const PlayerText(),
            ),
          ],
        ),
      ),
    );
  }
}
