import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stanza_scrapper/src/features/game/presenter/widget/gradient_text.dart';

import '../../model/player.dart';

class PlayerHeader extends StatelessWidget {
  final Player player;
  final bool showAvatar;

  const PlayerHeader(
      {super.key, required this.player, this.showAvatar = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showAvatar && player.image != null)
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(player.image!),
            backgroundColor: Colors.transparent,
          ),
        GradientText(
          player.name,
          style: GoogleFonts.junge(
              textStyle:
                  const TextStyle(fontSize: 36, fontWeight: FontWeight.w900)),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.yellow, Colors.deepOrange]),
        ),
      ],
    );
  }
}
