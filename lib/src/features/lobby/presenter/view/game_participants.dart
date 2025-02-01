import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../game/bloc/game_cubit.dart';
import '../../bloc/lobby_cubit.dart';
import '../../model/queueing_user.dart';
import '../widget/player_widget_tile.dart';

class GameParticipants extends StatelessWidget {
  const GameParticipants({super.key});

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
                'Game',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            BlocBuilder<GameCubit, GameState>(
              builder: (context, gameState) => gameState.status.maybeMap(
                  start: (_) => TextButton(
                      onPressed: () => context.read<GameCubit>().stop(),
                      child: const Row(
                        children: [
                          Text('Mute'),
                          Icon(Icons.volume_off_outlined)
                        ],
                      )),
                  orElse: () => TextButton(
                      onPressed: () => context.read<GameCubit>().start(),
                      child: const Row(
                        children: [
                          Text('Speak'),
                          Icon(Icons.volume_up_outlined)
                        ],
                      ))),
            ),
          ],
        ),
        Container(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 3),
          child: BlocSelector<LobbyCubit, LobbyState, List<QueueingUser>>(
            selector: (state) {
              final players =
                  state.lobby.where((element) => element.nextPlayer).toList();
              players.sort((a, b) => a.created.compareTo(b.created));
              return players;
            },
            builder: (context, players) {
              return ListView.separated(
                  itemCount: players.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) => PlayerWidgetTile(
                      key: Key(players.elementAt(index).created.toString()),
                      user: players.elementAt(index)));
            },
          ),
        ),
      ],
    );
  }
}
