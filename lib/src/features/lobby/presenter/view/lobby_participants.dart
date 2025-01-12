import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stanza_scrapper/core/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/clock/presenter/clock_widget.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/model/queueing_user.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/model/participants_mode.dart';
import 'package:stanza_scrapper/src/features/lobby_firestore/bloc/firestore_chat_cubit.dart';

class LobbyParticipants extends StatelessWidget {
  final ParticipantsMode mode;

  const LobbyParticipants({super.key, this.mode = ParticipantsMode.youtube});

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
                    SizedBox(
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
              return ListView.separated(
                  itemCount: users.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) => _Participant(
                        user: users.elementAt(index),
                        mode: mode,
                      ));
            },
          ),
        ),
      ],
    );
  }
}

class _Participant extends StatelessWidget {
  final QueueingUser user;
  final ParticipantsMode mode;

  const _Participant(
      {super.key, required this.user, this.mode = ParticipantsMode.youtube});

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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(user.name),

          /// LAST MESSAGE TIMESTAMP CLOCK
          if (mode == ParticipantsMode.youtube)
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
          if (mode == ParticipantsMode.firebase)
            BlocBuilder<FirestoreChatCubit, FirestoreChatState>(
              builder: (context, state) {
                final lastActivityTimestamp = state.chat.authors
                    .lastWhere((element) => element.name == user.name)
                    .lastActivityTimestamp;

                return ClockWidget(
                  millis: lastActivityTimestamp,
                );
              },
            )
        ],
      ),
      subtitle: user.type.isNotEmpty
          ? Text(
              user.type,
            )
          : null,
    );
  }
}
