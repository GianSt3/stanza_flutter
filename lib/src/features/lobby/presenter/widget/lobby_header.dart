import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stanza_scrapper/core/bloc/api_quota/api_quota_cubit.dart';
import 'package:stanza_scrapper/core/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/gen/assets.gen.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/model/queueing_user.dart';

class LobbyHeader extends StatefulWidget {
  static const padding = 16.0;

  const LobbyHeader({super.key});

  @override
  State<LobbyHeader> createState() => _LobbyHeaderState();
}

class _LobbyHeaderState extends State<LobbyHeader> {
  final chatIdController = TextEditingController(text: "");
  final keywordController = TextEditingController(text: "");
  late Timer checkQuota;

  @override
  void initState() {
    super.initState();

    /// CHECK QUOTA EVERY 3 MINUTES
    checkQuota = Timer.periodic(const Duration(minutes: 3), (_) {
      context.read<ApiQuotaCubit>().check();
    });
  }

  @override
  void dispose() {
    chatIdController.dispose();
    keywordController.dispose();
    checkQuota.cancel();
    super.dispose();
  }

  Color getColor(double ratio) {
    // const firstThreshold = 0.4;
    // const secondThreshold = 0.6;
    // return ratio > secondThreshold
    //     ? Color.lerp(Colors.yellow.shade600, Colors.red.shade900,
    //         (ratio - secondThreshold) / (1 - secondThreshold))!
    //     : ratio > firstThreshold
    //         ? Color.lerp(Colors.green.shade800, Colors.yellow.shade600,
    //             (ratio - firstThreshold) / (secondThreshold - firstThreshold))!
    //         : Color.lerp(Colors.green.shade100, Colors.green.shade800,
    //             ratio / firstThreshold)!;

    return ratio > 0.95
        ? Colors.red.shade900
        : ratio > 0.85
            ? Colors.red.shade400
            : ratio > 0.6
                ? Colors.orange.shade300
                : Colors.green;
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
            .map((okMessage) => QueueingUser.create(
                name: okMessage.author,
                avatarUrl: okMessage.avatarUrl,
                type: okMessage.authorType))
            .toList()
            .forEach((player) => context.read<LobbyCubit>().add(player));
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: LobbyHeader.padding),
          child: Column(
            children: [
              Row(
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
                            decoration:
                                const InputDecoration(labelText: "Chat Id"),
                          ),
                        ),
                        IconButton(
                          icon: Assets.icons.start.svg(theme: SvgTheme(currentColor: Theme.of(context).disabledColor)),
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
              const SizedBox(
                height: 8,
              ),
              BlocBuilder<ApiQuotaCubit, ApiQuotaState>(
                builder: (context, state) => LinearProgressIndicator(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  value: state.maybeWhen(
                      loaded: (data) => data.ratio, orElse: () => 0.8),
                  color: state.maybeWhen(
                      loaded: (quota) => getColor(quota.ratio),
                      orElse: () => Colors.grey),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
