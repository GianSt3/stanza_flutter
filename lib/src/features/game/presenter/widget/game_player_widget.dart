import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';
import 'package:stanza_scrapper/src/features/game/model/audio_message.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/src/features/game/presenter/widget/player_header.dart';

class GamePlayerWidget extends StatelessWidget {
  final Player player;

  const GamePlayerWidget({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameCubit, GameState, bool>(
      selector: (state) =>
          state.status.maybeWhen(stop: () => false, orElse: () => true),
      builder: (context, gameStarted) {
        if (!gameStarted) {
          /// EMPTY
          return const SizedBox.shrink();
        }

        /// PLAYER MESSAGES
        return LayoutBuilder(
          builder: (context, constraints) => Container(
            padding: EdgeInsets.symmetric(
              horizontal: constraints.maxWidth / 3 * 0.2,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.1,
                ),
                BlocSelector<GameMessagesCubit, GameMessagesState,
                    (String text, AudioType type)>(
                  selector: (state) {
                    /// Last played player's message
                    final lastMessage = state.lastPlayerMessages
                        .where(
                            (element) => element.message.author == player.name)
                        .firstOrNull;

                    return (
                      lastMessage?.message.text ?? "",
                      lastMessage?.audioType ?? AudioType.textToSpeech
                    );
                  },
                  builder: (context, value) {
                    final (text, type) = value;
                    return Expanded(
                      child: Container(
                        // decoration: BoxDecoration(
                        //   border: Border.all(color: Colors.white),
                        // ),
                        alignment: Alignment.center,

                        /// PLAYER MESSAGE
                        child: Text(text,
                            maxLines: 10,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.kanit(
                                textStyle: TextStyle(
                                    fontSize: constraints.maxHeight * 0.08 -
                                        (text.length /
                                            20 *
                                            constraints.maxHeight /
                                            constraints.maxWidth),
                                    color: type == AudioType.silence
                                        ? Colors.grey.shade300
                                        : Colors.white))),
                      ),
                    );
                  },
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
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
