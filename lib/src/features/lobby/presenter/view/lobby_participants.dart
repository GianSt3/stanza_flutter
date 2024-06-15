import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/model/queueing_user.dart';

class LobbyParticipants extends StatelessWidget {
  const LobbyParticipants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lobby",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  context.read<LobbyCubit>().random();
                },
                child: const Row(
                  children: [
                    Text("Random"),
                    const SizedBox(
                      width: 12,
                    ),
                    Icon(
                      FontAwesomeIcons.shuffle,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 3),
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: BlocBuilder<LobbyCubit, LobbyState>(
            builder: (context, state) {
              final users = state.lobby;
              return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) =>
                      _Participant(user: users.elementAt(index)));
            },
          ),
        ),
      ],
    );
  }
}

class _Participant extends StatelessWidget {
  final QueueingUser user;

  const _Participant({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      selected: user.nextPlayer,
      leading: user.nextPlayer
          ? IconButton(
              onPressed: () {
                context.read<GameCubit>().removePlayer(user.name);
                context.read<LobbyCubit>().remove(user);
              },
              icon: const Icon(
                Icons.remove_circle_rounded,
                color: Colors.red,
                size: 18,
              ))
          : IconButton(
              onPressed: () {
                context.read<LobbyCubit>().promote(user);
              },
              icon: const Icon(
                Icons.add_box_rounded,
                color: Colors.green,
                size: 18,
              )),
      title: Text(user.name),
      subtitle: user.type.isNotEmpty ? Text(user.type) : null,
    ));
    return Row(
      children: [
        Icon(
          user.nextPlayer
              ? Icons.sentiment_satisfied_alt_rounded
              : Icons.sentiment_satisfied,
          color: user.nextPlayer ? Colors.green : Colors.grey,
          size: 18,
        ),
        IconButton(
            onPressed: () {
              context.read<LobbyCubit>().promote(user);
            },
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.green,
              size: 18,
            )),
        IconButton(
            onPressed: () {
              context.read<GameCubit>().removePlayer(user.name);
              context.read<LobbyCubit>().remove(user);
            },
            icon: const Icon(
              Icons.remove_circle_outline_sharp,
              color: Colors.red,
              size: 18,
            )),
        const SizedBox(
          width: 8,
        ),
        Text(user.name),
      ],
    );
  }
}
