import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stanza_scrapper/src/features/dnd/bloc/game/dnd_cubit.dart';

class PlayerMessage extends StatelessWidget {
  final Player player;
  final String message;

  const PlayerMessage({super.key, required this.player, required this.message});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          GradientText(
            player.name,
            style: GoogleFonts.kanit(textStyle: TextStyle(fontSize: 36)), gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.yellow, Colors.deepOrange]),
          ),
          Text(message,
              maxLines: 5,
              style: GoogleFonts.kanit(textStyle: TextStyle(fontSize: 24, color: Colors.white))),
        ],
      ),
    );
  }
}


class GradientText extends StatelessWidget {
  const GradientText(
      this.text, {super.key, 
        required this.gradient,
        this.style,
      });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}