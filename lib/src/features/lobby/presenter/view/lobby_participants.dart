import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/bloc/scrapper/youtube_scrapper_cubit.dart';
import '../../../clock/presenter/clock_widget.dart';
import '../../../game/bloc/game_cubit.dart';
import '../../../lobby_firestore/bloc/firestore_chat_cubit.dart';
import '../../bloc/lobby_cubit.dart';
import '../../model/queueing_user.dart';
import '../model/participants_mode.dart';

class LobbyParticipants extends StatelessWidget {
  final ParticipantsMode mode;

  const LobbyParticipants({super.key, this.mode = ParticipantsMode.youtube});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lobby',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          BlocBuilder<LobbyCubit, LobbyState>(
            builder: (context, state) {
              final users = state.lobby;
              return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: users.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) => _Participant(
                        user: users.elementAt(index),
                        mode: mode,
                      ));
            },
          ),
        ],
      ),
    );
  }
}

class _Participant extends StatelessWidget {
  final QueueingUser user;
  final ParticipantsMode mode;

  const _Participant(
      {required this.user, this.mode = ParticipantsMode.youtube});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: user.nextPlayer,
      leading: user.nextPlayer
          ? IconButton(
              onPressed: () {
                context.read<GameCubit>().removePlayer(user.name);
                context.read<LobbyCubit>().remove(user);
              },
              icon: Icon(
                FontAwesomeIcons.trash,
                size: 20,
                color: Colors.red.shade700,
              ),
            )
          : IconButton(
              onPressed: () {
                context.read<LobbyCubit>().promote(user);
              },
              icon: Icon(
                FontAwesomeIcons.squareArrowUpRight,
                size: 20,
                color: Colors.green.shade700,
              ),
            ),
      title: _TitleWidget(
        user: user,
        mode: mode,
      ),
      subtitle: user.type.isNotEmpty
          ? Text(
              user.type,
            )
          : null,
    );
  }
}

class _TitleWidget extends StatelessWidget {
  final QueueingUser user;
  final ParticipantsMode mode;

  const _TitleWidget({
    required this.user,
    required this.mode,
  });

  @override
  Widget build(BuildContext context) {
    switch (mode) {
      case ParticipantsMode.youtube:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(user.name),
            BlocBuilder<YoutubeScrapperCubit, YoutubeScrapperState>(
              buildWhen: (prev, current) =>
                  prev.chat.messages
                      .where((element) => element.author == user.name)
                      .length !=
                  current.chat.messages
                      .where((element) => element.author == user.name)
                      .length,
              builder: (context, state) {
                return ClockWidget(
                  millis: state.chat.messages
                      .lastWhere((element) => element.author == user.name)
                      .created,
                );
              },
            ),
          ],
        );
      case ParticipantsMode.firebase:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.name),
            BlocBuilder<FirestoreChatCubit, FirestoreChatState>(
              builder: (context, state) {
                if (state.status == const FirestoreChatStateStatus.error()) {
                  return const Center(child: Text('Firebase error.'));
                }
                final lastActivityTimestamp = state.chat.authors
                    .lastWhere((element) => element.name == user.name)
                    .lastActivityTimestamp;

                return ClockWidget(
                  millis: lastActivityTimestamp,
                );
              },
            ),
          ],
        );
    }
  }
}
