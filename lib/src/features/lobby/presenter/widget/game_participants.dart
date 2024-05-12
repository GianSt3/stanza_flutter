import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/model/queueing_user.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/custom_voice_cubit.dart';

class GameParticipants extends StatelessWidget {
  const GameParticipants({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Text(
            "Game",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          BlocBuilder<GameCubit, GameState>(
            builder: (context, gameState) {
              return TextButton(
                  onPressed: gameState.canStart ? () {} : null,
                  child: Text("Start"));
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: BlocBuilder<LobbyCubit, LobbyState>(
              builder: (context, state) {
                final users =
                    state.lobby.where((element) => element.nextPlayer);
                return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) =>
                        _Player(user: users.elementAt(index)));
              },
            ),
          ),
          BlocBuilder<GameCubit, GameState>(
            builder: (context, gameState) {
              return Column(
                children: gameState.players
                    .map((e) => Text("${e.name} ${e.voice.name}"))
                    .toList(),
              );
            },
          )
        ],
      ),
    );
  }
}

class _Player extends StatelessWidget {
  final QueueingUser user;

  const _Player({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(user.name),
        BlocBuilder<CustomVoiceCubit, CustomVoiceState>(
          builder: (context, state) {
            return DropdownMenu(
                onSelected: (voice) {
                  if (voice != null) {
                    context.read<GameCubit>().player(Player(
                        number: 0,
                        name: user.name,
                        image: user.avatarUrl,
                        voice: voice));
                  }
                },
                dropdownMenuEntries: state.voices
                    .map((e) => DropdownMenuEntry<CustomVoice>(
                        value: e, label: e.name!))
                    .toList());
          },
        ),
        IconButton(
            onPressed: () {
              context.read<GameCubit>().removePlayer(user.name);
              context.read<LobbyCubit>().demote(user);
            },
            icon: const Icon(
              Icons.remove_circle_outline_sharp,
              color: Colors.red,
              size: 18,
            ))
      ],
    );
  }
}
