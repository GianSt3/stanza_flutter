import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/dnd/bloc/game/dnd_cubit.dart';

class ChoosePlayer extends StatefulWidget {
  final int id;
  final int totalPlayers;

  const ChoosePlayer({super.key, required this.id, required this.totalPlayers});

  @override
  State<ChoosePlayer> createState() => _ChoosePlayerState();
}

class _ChoosePlayerState extends State<ChoosePlayer> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DndCubit, DndState>(
      listener: (context, state) {

      },
      child: BlocBuilder<YoutubeScrapperCubit, YoutubeScrapperState>(
        builder: (context, scrapperState) {
          return scrapperState.status.maybeMap(
              reading: (_) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DropdownMenu(
                        controller: controller,
                        width: MediaQuery.of(context).size.width /
                            (widget.totalPlayers + 1),
                        hintText: "Player ${widget.id}",
                        onSelected: (author) => author != null
                            ? context
                                .read<DndCubit>()
                                .choose(id: widget.id, author: author)
                            : null,
                        dropdownMenuEntries: scrapperState.chat.authors
                            .map((e) => DropdownMenuEntry(value: e, label: e.name))
                            .toList()),
                  ),
              orElse: () => const SizedBox.shrink());
        },
      ),
    );
  }
}
