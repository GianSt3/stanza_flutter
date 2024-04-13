import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';

class ChatFilteredMessagesWidget extends StatefulWidget {
  const ChatFilteredMessagesWidget({super.key});

  @override
  State<ChatFilteredMessagesWidget> createState() =>
      _ChatFilteredMessagesWidgetState();
}

class _ChatFilteredMessagesWidgetState
    extends State<ChatFilteredMessagesWidget> {
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
          scrollController.jumpTo(scrollController.position.maxScrollExtent);
        });
      },
      builder: (context, state) => ListView.builder(
          controller: scrollController,
          itemCount: state.chat.messages
              .where((element) => state.filter.authors.contains(element.author))
              .length,
          itemBuilder: (context, index) => Text(state.chat.messages
              .where((element) => state.filter.authors.contains(element.author))
              .elementAt(index)
              .toString())),
    );
  }
}
