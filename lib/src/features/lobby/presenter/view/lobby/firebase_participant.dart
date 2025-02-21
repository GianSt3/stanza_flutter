part of '../lobby_participants.dart';

class _FirebaseParticipant extends StatelessWidget {
  final QueueingUser user;

  const _FirebaseParticipant({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: user.nextPlayer ? Colors.grey.shade100 : Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          user.nextPlayer
              ? IconButton(
                  onPressed: () {
                    context.read<GameCubit>().removePlayer(user.name);
                    context.read<LobbyCubit>().remove(user);
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    size: 16,
                    color: Colors.red.shade700,
                  ),
                )
              : IconButton(
                  onPressed: () {
                    context.read<LobbyCubit>().promote(user);
                  },
                  icon: Icon(
                    FontAwesomeIcons.squareArrowUpRight,
                    size: 16,
                    color: Colors.green.shade700,
                  ),
                ),
          Column(
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
          )
        ],
      ),
    );
  }
}
