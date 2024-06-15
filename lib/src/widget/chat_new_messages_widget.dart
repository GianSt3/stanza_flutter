import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/bloc/scrapper/youtube_scrapper_cubit.dart';

class ChatNewMessagesWidget extends StatefulWidget {
  const ChatNewMessagesWidget({super.key});

  @override
  State<ChatNewMessagesWidget> createState() => _ChatNewMessagesWidgetState();
}

class _ChatNewMessagesWidgetState extends State<ChatNewMessagesWidget> {
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
          itemCount: state.chat.newMessages.length,
          itemBuilder: (context, index) =>
              Text(state.chat.newMessages.elementAt(index).toString())),
    );
  }
}
