import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/model/queueing_user.dart';

class LobbyHeader extends StatefulWidget {
  static const padding = 16.0;

  const LobbyHeader({super.key});

  @override
  State<LobbyHeader> createState() => _LobbyHeaderState();
}

class _LobbyHeaderState extends State<LobbyHeader> {
  final chatIdController = TextEditingController(text: "4oStw0r33so");
  final keywordController = TextEditingController(text: "");

  @override
  void dispose() {
    chatIdController.dispose();
    keywordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<YoutubeScrapperCubit, YoutubeScrapperState>(
      listener: (context, state) {
        // User get into Lobby writing the keyword on the chat
        state.chat.newMessages
            .where((message) =>
                message.text.isNotEmpty &&
                message.text == keywordController.text)
            .map((okMessage) => QueueingUser(
                name: okMessage.author,
                avatarUrl: okMessage.avatarUrl,
                type: okMessage.authorType ?? ""))
            .toList()
            .forEach((player) => context.read<LobbyCubit>().add(player));
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: LobbyHeader.padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Row(
                  children: [
                    SizedBox(
                      width: 250,
                      child: TextField(
                        controller: chatIdController,
                        enabled: state.status.maybeMap(
                            reading: (_) => false, orElse: () => true),
                        decoration: const InputDecoration(labelText: "Chat Id"),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.play),
                      iconSize: 24,
                      onPressed: state.status.mapOrNull(
                          initial: (_) => () => context
                              .read<YoutubeScrapperCubit>()
                              .start(chatIdController.text)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  controller: keywordController,
                  decoration:
                      const InputDecoration(labelText: "Parola d'ordine"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
