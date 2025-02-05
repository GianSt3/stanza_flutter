import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../perform/bloc/perform_list_cubit.dart';
import '../poll/bloc/list/poll_list_cubit.dart';

class MinigameStarterPage extends StatelessWidget {
  const MinigameStarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 6,
        child: Column(
          children: [
            BlocBuilder<PollListCubit, PollListState>(
              builder: (context, state) {
                return ExpansionTile(
                    title: Text('Poll'),
                    children: state.sortedPolls
                        .map((poll) => ListTile(
                              title: Text(poll.question),
                              onTap: () {
                                context.read<PollListCubit>().select(poll);
                              },
                            ))
                        .toList());
              },
            ),
            BlocBuilder<PerformListCubit, PerformListState>(
              builder: (context, state) => state.maybeMap(
                loaded: (loaded) => ExpansionTile(
                  title: Text('Perform'),
                  children: loaded.performs
                      .map((perform) => ListTile(
                            title: Text(perform.title),
                            onTap: () {
                              context.read<PerformListCubit>().select(perform);
                            },
                          ))
                      .toList(),
                ),
                orElse: () => const SizedBox(),
              ),
            )
          ],
        ));
  }
}
