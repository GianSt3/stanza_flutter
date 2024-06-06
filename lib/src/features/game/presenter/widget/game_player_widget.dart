import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PlayerHeader(player: player),
            BlocSelector<GameMessagesCubit, GameMessagesState, String>(
              selector: (state) {
                /// Last played player's message
                final lastMessage = state.lastPlayerMessages
                    .where((element) => element.message.author == player.name)
                    .firstOrNull
                    ?.message;

                return lastMessage?.text ?? "";
              },
              builder: (context, text) {
                return Text(text,
                    maxLines: 5,
                    style: GoogleFonts.kanit(
                        textStyle: const TextStyle(
                            fontSize: 24, color: Colors.black)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
