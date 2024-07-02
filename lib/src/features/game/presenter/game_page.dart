import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';
import 'package:stanza_scrapper/src/features/game/presenter/game_message_listener.dart';
import 'package:stanza_scrapper/src/features/game/presenter/widget/game_player_widget.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GameMessageListener(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<GameMessagesCubit, GameMessagesState>(
            builder: (context, gameMessageState) {
              return BlocBuilder<GameCubit, GameState>(
                builder: (context, gameState) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Text(
                      //   "Game ${gameState.status.maybeMap(start: (_) => "🔊", orElse: () => "🔇")}",
                      //   style: Theme.of(context).textTheme.titleLarge,
                      // ),
                      Text(
                        gameMessageState.status.maybeMap(
                            error: (err) => err.message, orElse: () => ""),
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
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/players_box.png'),
                    fit: BoxFit.fill),
              ),
              child: Expanded(
                child: BlocBuilder<GameCubit, GameState>(
                  builder: (context, state) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: state.players
                          .map((player) => Flexible(
                                flex: 1,
                                child: GamePlayerWidget(
                                  player: player,
                                ),
                              ))
                          .toList(),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
