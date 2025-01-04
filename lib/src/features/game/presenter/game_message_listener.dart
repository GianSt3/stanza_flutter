import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';
import 'package:stanza_scrapper/src/features/game/presenter/model/game_mode.dart';
import 'package:stanza_scrapper/src/features/lobby_firestore/bloc/firestore_chat_cubit.dart';
import 'package:stanza_scrapper/utils/logger.dart';

class GameMessageListener extends StatelessWidget {
  final GameMode mode;

  const GameMessageListener(
      {super.key, required this.child, this.mode = GameMode.youtube});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameMessagesCubit, GameMessagesState>(
      listener: (context, state) {
        state.status.whenOrNull(loaded: () {
          context.read<GameMessagesCubit>().pop();
        });
      },
      child: BlocBuilder<GameCubit, GameState>(
        builder: (context, gameState) {
          final players = gameState.players.map((p) => p.name);

          switch (mode) {
            case GameMode.youtube:
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
                      context.read<GameMessagesCubit>().pushAll(
                          playerNewMessages,
                          gameState.players,
                          gameState.status.maybeWhen(
                              start: () => true, orElse: () => false));
                    } else {
                      logger.d("No new messages.\n${state.chat.newMessages}");
                    }
                  });
                },
                child: child,
              );
            case GameMode.firebase:
              return BlocListener<FirestoreChatCubit, FirestoreChatState>(
                listener: (context, state) {
                  state.status.whenOrNull(reading: () {
                    /// Get all players new messages
                    /// LEAVE ONLY THIS INSTANCE TO READ MESSAGES
                    final playerMessages = state.chat.messages
                        .where((message) => players.contains(message.author))
                        .toList();

                    if (playerMessages.isNotEmpty) {
                      context.read<GameMessagesCubit>().pushAll(
                          playerMessages,
                          gameState.players,
                          gameState.status.maybeWhen(
                              start: () => true, orElse: () => false));
                    } else {
                      logger.d("No new messages.\n${state.chat.messages}");
                    }
                  });
                },
                child: child,
              );
          }
        },
      ),
    );
  }
}
