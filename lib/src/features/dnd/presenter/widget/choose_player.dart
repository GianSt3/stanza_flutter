import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/dnd/bloc/game/dnd_cubit.dart';

class ChoosePlayer extends StatelessWidget {
  final int id;
  final int totalPlayers;

  const ChoosePlayer({super.key, required this.id, required this.totalPlayers});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YoutubeScrapperCubit, YoutubeScrapperState>(
      builder: (context, state) {
        return state.status.maybeMap(
            reading: (_) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: DropdownMenu(
                  width: MediaQuery.of(context).size.width / (totalPlayers + 1),
                  hintText: "Player $id",
                  onSelected: (author) => author != null
                      ? context.read<DndCubit>().choose(id: id, name: author)
                      : null,
                  dropdownMenuEntries: state.chat.authors
                      .map((e) => DropdownMenuEntry(value: e, label: e))
                      .toList()),
            ),
            orElse: () => const Placeholder());
      },
    );
  }
}
