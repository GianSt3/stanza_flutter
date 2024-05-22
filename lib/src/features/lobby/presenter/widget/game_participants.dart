import 'package:flutter/cupertino.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Game",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              BlocBuilder<GameCubit, GameState>(
                builder: (context, gameState) => gameState.status.maybeMap(
                    start: (_) => TextButton(
                        onPressed: () => context.read<GameCubit>().stop(),
                        child: const Text("Mute")),
                    orElse: () => TextButton(
                        onPressed: () => context.read<GameCubit>().start(),
                        child: const Text("Speak"))),
              ),
            ],
          ),
          Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height / 3),
            decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
        Row(
          children: [
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
                  showDialog(
                      context: context,
                      builder: (dialogContext) => AlertDialog(
                            title: Text("Remove ${user.name}"),
                            content: Text(
                                "Are you sure to remove ${user.name} from the game?"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(null);
                                  },
                                  child: const Text("Cancel")),
                              TextButton(
                                  onPressed: () {
                                    context
                                        .read<GameCubit>()
                                        .removePlayer(user.name);
                                    context.read<LobbyCubit>().demote(user);
                                    Navigator.of(context).pop(null);
                                  },
                                  child: const Text("Confirm"))
                            ],
                          ));

                  ;
                },
                icon: const Icon(
                  Icons.remove_circle_outline_sharp,
                  color: Colors.red,
                  size: 18,
                ))
          ],
        ),
      ],
    );
  }
}
