import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/dnd/presenter/widget/player_message.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';

import '../model/player.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Game",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          BlocBuilder<GameCubit, GameState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                    state.players.map((e) => GamePlayer(player: e)).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class GamePlayer extends StatelessWidget {
  final Player player;

  const GamePlayer({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              if (player.image != null)
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(player.image!),
                  backgroundColor: Colors.transparent,
                ),
              GradientText(
                player.name,
                style:
                    GoogleFonts.kanit(textStyle: const TextStyle(fontSize: 36)),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.yellow, Colors.deepOrange]),
              ),
            ],
          ),
          BlocBuilder<YoutubeScrapperCubit, YoutubeScrapperState>(
            builder: (context, state) {
              return Text(
                  state.chat.messages
                      .where((message) => message.author == player.name)
                      .last
                      .text,
                  maxLines: 5,
                  style: GoogleFonts.kanit(
                      textStyle:
                          const TextStyle(fontSize: 24, color: Colors.black)));
            },
          ),
        ],
      ),
    );
  }
}
