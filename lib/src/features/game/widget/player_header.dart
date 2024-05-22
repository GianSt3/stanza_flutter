import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stanza_scrapper/src/features/dnd/presenter/widget/player_message.dart';

import '../model/player.dart';

class PlayerHeader extends StatelessWidget {
  final Player player;

  const PlayerHeader({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (player.image != null)
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(player.image!),
            backgroundColor: Colors.transparent,
          ),
        GradientText(
          player.name,
          style: GoogleFonts.kanit(textStyle: const TextStyle(fontSize: 36)),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.yellow, Colors.deepOrange]),
        ),
      ],
    );
  }
}
