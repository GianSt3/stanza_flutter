import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/logger.dart';
import '../../game/bloc/game_cubit.dart';
import '../../game/bloc/messages/game_messages_cubit.dart';
import '../../game/model/audio_message.dart';
import '../../game/model/player.dart';
import '../../game/presenter/game_firestore_message_listener.dart';
import '../../game/presenter/widget/player_header.dart';

class FirestoreGamePage extends StatelessWidget {
  const FirestoreGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 413 / 1082,
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('./assets/images/players_box_vertical.png'),
              fit: BoxFit.fill),
        ),
        child: GameFirestoreMessageListener(
          child: BlocSelector<GameCubit, GameState, bool>(
            selector: (state) =>
                state.status.maybeWhen(stop: () => false, orElse: () => true),
            builder: (context, gameStarted) {
              if (!gameStarted) {
                logger.d('Game not started');

                /// EMPTY
                return Text('Game not started');
              }

              /// PLAYER MESSAGES
              return BlocBuilder<GameCubit, GameState>(
                builder: (context, state) {
                  final array = List.generate(
                      3, (index) => state.players.elementAtOrNull(index));

                  return Column(
                    children: [
                      const AspectRatio(
                        aspectRatio: 250 / 105,
                        child: SizedBox.shrink(),
                      ),
                      ...array
                          .map((player) => player != null
                              ? AspectRatio(
                                  aspectRatio: 200 / 145,
                                  child: _GamePlayerWidget(
                                    player: player,
                                  ),
                                )
                              : const SizedBox.shrink())
                          .toList()
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class _GamePlayerWidget extends StatelessWidget {
  const _GamePlayerWidget({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameMessagesCubit, GameMessagesState,
        (String text, AudioType type)>(selector: (state) {
      /// Last played player's message
      final lastMessage = state.lastPlayerMessages
          .where((element) => element.message.author == player.name)
          .firstOrNull;

      return (
        lastMessage?.message.text ?? '',
        lastMessage?.audioType ?? AudioType.textToSpeech
      );
    }, builder: (context, value) {
      final (text, type) = value;

      return LayoutBuilder(
        key: ValueKey(player.name),
        builder: (context, constraints) {
          logger.d('constraints: $constraints');
          return Column(
            children: [
              Expanded(
                child: Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.white),
                  // ),
                  alignment: Alignment.center,

                  /// PLAYER MESSAGE
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth / 50),
                      child: Text(
                          key: ValueKey(text),
                          text,
                          maxLines: 10,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                              textStyle: TextStyle(
                                  fontSize: constraints.maxWidth * 0.07 -
                                      (text.length /
                                          20 *
                                          constraints.maxHeight /
                                          constraints.maxWidth),
                                  fontStyle: type == AudioType.me
                                      ? FontStyle.italic
                                      : null,
                                  color: type == AudioType.silence
                                      ? Colors.grey.shade300
                                      : Colors.white))),
                    ),
                  ),
                ),
              ),

              /// PLAYER NAME
              Container(
                  alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.white),
                  // ),
                  width: constraints.maxWidth / 3 * 10,
                  height: constraints.maxHeight * 0.2,
                  child: PlayerHeader(player: player)),
            ],
          );
        },
      );
    });
  }
}
