import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/model/queueing_user.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/widget/chat_card_widget.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/voice/custom_voice_cubit.dart';
import 'package:stanza_scrapper/domain/entities/custom_voice.dart';
import 'package:stanza_scrapper/utils/participant_icon_extension.dart';

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
                "Game",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            BlocBuilder<GameCubit, GameState>(
              builder: (context, gameState) => gameState.status.maybeMap(
                  start: (_) => TextButton(
                      onPressed: () => context.read<GameCubit>().stop(),
                      child: const Row(
                        children: [
                          Text("Mute"),
                          Icon(Icons.volume_off_outlined)
                        ],
                      )),
                  orElse: () => TextButton(
                      onPressed: () => context.read<GameCubit>().start(),
                      child: const Row(
                        children: [
                          Text("Speak"),
                          Icon(Icons.volume_up_outlined)
                        ],
                      ))),
            ),
          ],
        ),
        Container(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 3),
          child: BlocBuilder<LobbyCubit, LobbyState>(
            builder: (context, state) {
              final players =
                  state.lobby.where((element) => element.nextPlayer);
              return ListView.builder(
                  itemCount: players.length,
                  itemBuilder: (context, index) => _Player(
                      key: Key(players.elementAt(index).name),
                      user: players.elementAt(index)));
            },
          ),
        ),
      ],
    );
  }
}

class _Player extends StatelessWidget {
  final QueueingUser user;

  const _Player({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        subtitle: user.type.isNotEmpty ? Text(user.type) : null,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                child: Text(
              user.name,
              overflow: TextOverflow.ellipsis,
            )),
            BlocBuilder<CustomVoiceCubit, CustomVoiceState>(
              builder: (context, state) {
                return DropdownMenu(
                    onSelected: (voice) {
                      if (voice != null) {
                        context.read<GameCubit>().player(Player(
                            name: user.name,
                            image: user.avatarUrl,
                            voice: voice));
                      }
                    },
                    dropdownMenuEntries: state.voices
                        .map((e) => DropdownMenuEntry<CustomVoice>(
                            value: e, label: e.name!))
                        .toList());
              },
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (dialogContext) => AlertDialog(
                title: Text("Remove ${user.name}"),
                content:
                    Text("Are you sure to remove ${user.name} from the game?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(null);
                      },
                      child: const Text("Cancel")),
                  TextButton(
                      onPressed: () {
                        context.read<GameCubit>().removePlayer(user.name);
                        context.read<LobbyCubit>().demote(user);
                        Navigator.of(context).pop(null);
                      },
                      child: const Text("Confirm"))
                ],
              ),
            );
          },
          icon: const Icon(
            Icons.remove_circle_outlined,
            color: Colors.red,
            size: 18,
          ),
        ),
      ),
    );
  }
}
