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

part 'lobby/firebase_participant.dart';
part 'lobby/youtube_participant.dart';

class LobbyParticipants extends StatelessWidget {
  final ParticipantsMode mode;

  const LobbyParticipants({super.key, this.mode = ParticipantsMode.youtube});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.grey.shade200,
            child: Center(
              child: Text(
                'Lobby',
                style: Theme.of(context).textTheme.titleMedium,
              ),
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
                  itemBuilder: (context, index) => switch (mode) {
                        ParticipantsMode.youtube =>
                          _YoutubeParticipant(user: users.elementAt(index)),
                        ParticipantsMode.firebase =>
                          _FirebaseParticipant(user: users.elementAt(index)),
                      });
            },
          ),
        ],
      ),
    );
  }
}
