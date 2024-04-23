import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stanza_scrapper/src/features/dnd/presenter/widget/choose_player.dart';

class ChoosePlayers extends StatefulWidget {
  const ChoosePlayers({super.key});

  @override
  State<ChoosePlayers> createState() => _ChoosePlayersState();
}

class _ChoosePlayersState extends State<ChoosePlayers> {
  int players = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Total Players ${players.toString()}"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (players > 1) players--;
                    });
                  },
                  icon: const Icon(Icons.exposure_minus_1)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      players++;
                    });
                  },
                  icon: const Icon(Icons.plus_one)),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: Iterable.generate(players)
              .map((e) => Column(
                    children: [
                      Text("Player ${e + 1}"),
                      ChoosePlayer(id: e, totalPlayers: players,),
                    ],
                  ))
              .toList(),
        ),
      ],
    );
  }
}
