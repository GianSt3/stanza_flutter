import 'package:flutter/cupertino.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (showAvatar && player.image != null)
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(player.image!),
            backgroundColor: Colors.transparent,
          ),
        LayoutBuilder(
          builder: (context, constraints) => GradientText(
            player.name,
            style: GoogleFonts.junge(
                textStyle: TextStyle(
                    fontSize: constraints.maxHeight * 0.45,
                    fontWeight: FontWeight.w900)),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.yellow, Colors.deepOrange]),
          ),
        ),
      ],
    );
  }
}
