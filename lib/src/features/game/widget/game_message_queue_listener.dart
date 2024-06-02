import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/queued_messages/queued_messages_cubit.dart';

class GameMessageQueueListener extends StatelessWidget {
  const GameMessageQueueListener({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, gameState) {
        return BlocListener<YoutubeScrapperCubit, YoutubeScrapperState>(
          listener: (context, youtubeState) {
            for (var player in gameState.players) {
              context
                  .read<QueuedMessagesCubit>()
                  .add(player, youtubeState.lastMessage(player.name).text);
            }
          },
          child: child,
        );
      },
    );
  }
}
