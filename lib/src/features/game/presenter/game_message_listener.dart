import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';

class GameMessageListener extends StatelessWidget {
  const GameMessageListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameMessagesCubit, GameMessagesState>(
      listener: (context, state) {
        state.status
            .whenOrNull(loaded: () => context.read<GameMessagesCubit>().pop());
      },
      child: BlocBuilder<GameCubit, GameState>(
        builder: (context, gameState) {
          final players = gameState.players.map((p) => p.name);

          return BlocListener<YoutubeScrapperCubit, YoutubeScrapperState>(
            listener: (context, state) {
              state.status.whenOrNull(reading: () {
                /// Get all players new messages
                /// LEAVE ONLY THIS INSTANCE TO READ MESSAGES
                final playerNewMessages = state.chat.newMessages
                    .where((message) => players.contains(message.author))
                    .toList();
                if (playerNewMessages.isNotEmpty) {
                  /// If there is any, put on the queue
                  // TODO add filter for every message
                  context
                      .read<GameMessagesCubit>()
                      .pushAll(playerNewMessages, gameState.players);
                }
              });
            },
            child: child,
          );
        },
      ),
    );
  }
}
