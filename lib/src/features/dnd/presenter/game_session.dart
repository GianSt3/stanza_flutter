import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/dnd/bloc/game/dnd_cubit.dart';
import 'package:stanza_scrapper/src/features/dnd/presenter/widget/player_message.dart';

class GameSession extends StatelessWidget {
  const GameSession({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<YoutubeScrapperCubit, YoutubeScrapperState>(
      listener: (context, state) {
        state.status.maybeMap(
            reading: (_) =>
                context.read<DndCubit>().messages(state.chat.messages),
            orElse: () => null);
      },
      child: BlocBuilder<DndCubit, DndState>(
        builder: (context, state) {
          return Container(
            color: Colors.black87,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: state.orderedPlayers
                  .map((e) => Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PlayerMessage(
                            player: e,
                            message:
                                state.playerMessage(e).lastOrNull?.text ?? "",
                          ),
                        ),
                      ))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
