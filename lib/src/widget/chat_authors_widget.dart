import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';

class ChatAuthorsWidget extends StatefulWidget {
  const ChatAuthorsWidget({super.key});

  @override
  State<ChatAuthorsWidget> createState() => _ChatAuthorsWidgetState();
}

class _ChatAuthorsWidgetState extends State<ChatAuthorsWidget> {
  ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<YoutubeScrapperCubit, YoutubeScrapperState>(
      listener: (context, state) {
        state.status.whenOrNull(reading: () {
          // scrollController.jumpTo(scrollController.position.maxScrollExtent);
        });
      },
      builder: (context, state) => Wrap(
        runSpacing: 12,
        spacing: 12,
        children: state.chat.authors
            .map((author) => TextButton(
                  onPressed: () =>
                      context.read<YoutubeScrapperCubit>().filter(author.name),
                  child: Text(state.filter.authors.contains(author.name)
                      ? "[[${author.name}]]"
                      : author.name),
                ))
            .toList(),
      ),
    );
  }
}
