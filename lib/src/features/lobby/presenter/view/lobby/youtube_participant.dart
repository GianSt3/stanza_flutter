part of '../lobby_participants.dart';

class _YoutubeParticipant extends StatelessWidget {
  final QueueingUser user;

  const _YoutubeParticipant({super.key, required this.user});

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
      ),
      subtitle: user.type.isNotEmpty
          ? Text(
              user.type,
            )
          : null,
    );
  }
}
