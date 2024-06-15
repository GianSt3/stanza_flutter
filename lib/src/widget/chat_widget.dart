import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/bloc/scrapper/youtube_scrapper_cubit.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
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
          itemCount: state.chat.messages.length,
          itemBuilder: (context, index) =>
              Text(state.chat.messages.elementAt(index).toString())),
    );
  }
}
