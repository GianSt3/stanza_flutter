import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stanza_scrapper/src/features/game/bloc/playable_message/playable_message_cubit.dart';

class PlayerText extends StatelessWidget {
  const PlayerText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayableMessageCubit, PlayableMessageState>(
      listener: (context, state) {
        state.whenOrNull(play: (_, __, audioSource) async {
          final audioPlayer = AudioPlayer();
          audioPlayer.setReleaseMode(ReleaseMode.release);
          if (audioSource != null) {
            await audioPlayer.play(audioSource);
          }
        });
      },
      builder: (context, state) {
        return Text(
            state.maybeMap(play: (pState) => pState.text, orElse: () => ""),
            maxLines: 5,
            style: GoogleFonts.kanit(
                textStyle: const TextStyle(fontSize: 24, color: Colors.black)));
      },
    );
  }
}
