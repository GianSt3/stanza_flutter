import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../lobby/bloc/lobby_cubit.dart';
import '../../lobby_firestore/bloc/firestore_chat_cubit.dart';
import '../../lobby_firestore/usecases/non_players_use_case.dart';
import '../bloc/minigame_setup_cubit.dart';
import '../perform/bloc/perform_list_cubit.dart';
import '../poll/bloc/list/poll_list_cubit.dart';

/// Page to start a minigame
class MinigameStarterPage extends StatelessWidget {
  MinigameStarterPage({super.key});

  final ExpansionTileController _expansionPollTileController =
      ExpansionTileController();
  final ExpansionTileController _expansionPerformTileController =
      ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 6,
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.read<MinigameSetupCubit>().reset();
              },
              child: const Text('Reset Minigame'),
            ),
            BlocBuilder<PollListCubit, PollListState>(
              builder: (context, state) {
                return ExpansionTile(
                    controller: _expansionPollTileController,
                    title: const Text('Poll'),
                    children: state.sortedPolls
                        .map((poll) => ListTile(
                              title: Text(poll.question),
                              onTap: () {
                                context
                                    .read<MinigameSetupCubit>()
                                    .setPoll(poll);
                                _expansionPollTileController.collapse();
                              },
                            ))
                        .toList());
              },
            ),
            BlocBuilder<PerformListCubit, PerformListState>(
              builder: (context, state) => state.maybeMap(
                loaded: (loaded) => ExpansionTile(
                  controller: _expansionPerformTileController,
                  title: const Text('Perform'),
                  children: loaded.sortedPerforms
                      .map((perform) => ListTile(
                            title: Text(perform.title),
                            onTap: () {
                              final nonPlayers = NonPlayersUseCase(
                                firestoreChatCubit:
                                    context.read<FirestoreChatCubit>(),
                                lobbyCubit: context.read<LobbyCubit>(),
                              )();

                              if (nonPlayers.isEmpty) {
                                return;
                              } else {
                                context.read<MinigameSetupCubit>().setPerform(
                                      perform,
                                      nonPlayers,
                                    );
                              }
                              _expansionPerformTileController.collapse();
                            },
                          ))
                      .toList(),
                ),
                orElse: () => const SizedBox(),
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<MinigameSetupCubit>().setPress();
              },
              child: const Text('Pressata'),
            ),
          ],
        ));
  }
}
