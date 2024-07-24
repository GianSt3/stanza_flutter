import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stanza_scrapper/domain/entities/custom_voice.dart';
import 'package:stanza_scrapper/src/features/game/bloc/game_cubit.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/model/queueing_user.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/voice/custom_voice_cubit.dart';

class PlayerWidgetTile extends StatefulWidget {
  const PlayerWidgetTile({super.key, required this.user});

  final QueueingUser user;

  @override
  State<PlayerWidgetTile> createState() => _PlayerWidgetTileState();
}

class _PlayerWidgetTileState extends State<PlayerWidgetTile> {
  bool _changingPlayer = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // subtitle: widget.user.type.isNotEmpty ? Text(widget.user.type) : null,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _changingPlayer
              ? BlocSelector<LobbyCubit, LobbyState, List<QueueingUser>>(
                  selector: (state) =>
                      state.lobby.where((lobby) => !lobby.nextPlayer).toList(),
                  builder: (context, potentialPlayers) {
                    if (potentialPlayers.isEmpty) {
                      Future.delayed(
                          const Duration(seconds: 2),
                          () => setState(() {
                                _changingPlayer = false;
                              }));
                      return const Text("Add other player to the Lobby");
                    }

                    /// DROPDOWN CHANGE PLAYER
                    return DropdownMenu(
                        label: const Text("Player"),
                        onSelected: (newPlayer) {
                          if (newPlayer != null) {
                            context.read<LobbyCubit>().promote(newPlayer);
                            context.read<GameCubit>().update(
                                oldPlayerName: widget.user.name,
                                newPlayerName: newPlayer.name,
                                newPlayerAvatar: newPlayer.avatarUrl);

                            context.read<LobbyCubit>().demote(widget.user);
                          }

                          setState(() {
                            _changingPlayer = false;
                          });
                        },
                        dropdownMenuEntries: potentialPlayers
                            .map((e) => DropdownMenuEntry<QueueingUser>(
                                value: e, label: e.name))
                            .toList());
                  })

              /// PLAYER NAME
              : Flexible(
                  child: Text(
                  widget.user.name,
                  overflow: TextOverflow.ellipsis,
                )),

          /// CUSTOM VOICE
          BlocSelector<GameCubit, GameState, CustomVoice?>(
            selector: (state) => state.players
                .where((element) => element.name == widget.user.name)
                .firstOrNull
                ?.voice,
            builder: (context, playerVoice) {
              return BlocBuilder<CustomVoiceCubit, CustomVoiceState>(
                builder: (context, state) {
                  return DropdownMenu(
                      label: const Text("Voice"),
                      enabled: !_changingPlayer,
                      initialSelection: playerVoice,
                      onSelected: (voice) {
                        if (voice != null) {
                          context.read<GameCubit>().player(Player(
                              name: widget.user.name,
                              image: widget.user.avatarUrl,
                              voice: voice));
                        }
                      },
                      dropdownMenuEntries: state.voices
                          .map((e) => DropdownMenuEntry<CustomVoice>(
                              value: e, label: e.name!))
                          .toList());
                },
              );
            },
          ),
        ],
      ),
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// REMOVE PLAYER
          if (!_changingPlayer)
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (dialogContext) => AlertDialog(
                    title: Text("Remove ${widget.user.name}"),
                    content: Text(
                        "Are you sure to remove ${widget.user.name} from the game?"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(null);
                          },
                          child: const Text("Cancel")),
                      TextButton(
                          onPressed: () {
                            context
                                .read<GameCubit>()
                                .removePlayer(widget.user.name);
                            context.read<LobbyCubit>().demote(widget.user);
                            Navigator.of(context).pop(null);
                          },
                          child: const Text("Confirm"))
                    ],
                  ),
                );
              },
              icon: Icon(
                FontAwesomeIcons.trash,
                size: 20,
                color: Colors.red.shade700,
              ),
            ),

          /// CHANGE PLAYER
          if (!_changingPlayer)
            IconButton(
                onPressed: () => setState(() {
                      _changingPlayer = true;
                    }),
                icon: Icon(
                  FontAwesomeIcons.rightLeft,
                  size: 20,
                  color: Colors.orange.shade400,
                ))
        ],
      ),
    );
  }
}
