import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/lobby_cubit.dart';
import '../../model/queueing_user.dart';
import '../model/participants_mode.dart';
import '../widget/player_widget_small_tile.dart';
import '../widget/player_widget_tile.dart';

class GameParticipants extends StatelessWidget {
  const GameParticipants({super.key, this.mode = ParticipantsMode.youtube});

  final ParticipantsMode mode;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Game',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height / 3),
            child: BlocSelector<LobbyCubit, LobbyState, List<QueueingUser>>(
              selector: (state) {
                final players =
                    state.lobby.where((element) => element.nextPlayer).toList();
                players.sort((a, b) => a.created.compareTo(b.created));
                return players;
              },
              builder: (context, players) {
                return ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: players.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) => switch (mode) {
                          ParticipantsMode.youtube => PlayerWidgetTile(
                              key: Key(
                                  players.elementAt(index).created.toString()),
                              user: players.elementAt(index)),
                          ParticipantsMode.firebase => PlayerWidgetSmallTile(
                              key: Key(
                                  players.elementAt(index).created.toString()),
                              user: players.elementAt(index)),
                        });
              },
            ),
          ),
        ],
      ),
    );
  }
}
