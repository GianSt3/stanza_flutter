import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../domain/entities/custom_voice.dart';
import '../../../game/bloc/game_cubit.dart';
import '../../../game/model/player.dart';
import '../../../settings/bloc/voice/custom_voice_cubit.dart';
import '../../bloc/lobby_cubit.dart';
import '../../model/queueing_user.dart';

class PlayerWidgetSmallTile extends StatefulWidget {
  const PlayerWidgetSmallTile({super.key, required this.user});

  final QueueingUser user;

  @override
  State<PlayerWidgetSmallTile> createState() => _PlayerWidgetSmallTileState();
}

class _PlayerWidgetSmallTileState extends State<PlayerWidgetSmallTile> {
  bool _changingPlayer = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _changingPlayer
                  ? BlocSelector<LobbyCubit, LobbyState, List<QueueingUser>>(
                      selector: (state) => state.lobby
                          .where((lobby) => !lobby.nextPlayer)
                          .toList(),
                      builder: (context, potentialPlayers) {
                        if (potentialPlayers.isEmpty) {
                          Future.delayed(
                              const Duration(seconds: 2),
                              () => setState(() {
                                    _changingPlayer = false;
                                  }));
                          return const Text('Add other player to the Lobby');
                        }

                        /// DROPDOWN CHANGE PLAYER
                        return DropdownMenu(
                          textStyle: const TextStyle(fontSize: 12),
                          inputDecorationTheme: InputDecorationTheme(
                            isDense: true,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                            constraints:
                                BoxConstraints.tight(const Size.fromHeight(40)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          label: const Text('Player'),
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
                              .map(
                                (e) => DropdownMenuEntry<QueueingUser>(
                                    value: e, label: e.name),
                              )
                              .toList(),
                        );
                      })

                  /// PLAYER NAME
                  : Text(
                      widget.user.name,
                      overflow: TextOverflow.ellipsis,
                    ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// REMOVE PLAYER
                  if (!_changingPlayer)
                    IconButton(
                      onPressed: () {
                        context
                            .read<GameCubit>()
                            .removePlayer(widget.user.name);
                        context.read<LobbyCubit>().demote(widget.user);
                      },
                      icon: Icon(
                        FontAwesomeIcons.trash,
                        size: 12,
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
                          size: 12,
                          color: Colors.orange.shade400,
                        ))
                ],
              )
            ],
          ),

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
                      textStyle: const TextStyle(fontSize: 12),
                      inputDecorationTheme: InputDecorationTheme(
                        isDense: true,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                        constraints:
                            BoxConstraints.tight(const Size.fromHeight(40)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      label: const Text('Voice'),
                      enabled: !_changingPlayer,
                      initialSelection: playerVoice,
                      onSelected: (voice) {
                        if (voice != null) {
                          context.read<GameCubit>().player(
                                Player(
                                  name: widget.user.name,
                                  image: widget.user.avatarUrl,
                                  voice: voice,
                                ),
                              );
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
        ]);
  }
}
