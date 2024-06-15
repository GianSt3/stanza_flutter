import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/model/queueing_user.dart';

class ChatParticipants extends StatelessWidget {
  const ChatParticipants({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Chat Participants",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: BlocBuilder<YoutubeScrapperCubit, YoutubeScrapperState>(
                  builder: (context, state) {
                    List<Author> authors = state.chat.authors.toList();
                    // Members on top
                    authors.sort((a, b) => a.type.compareTo(b.type) * -1);
                    return ListView.builder(
                        itemCount: authors.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            _Participant(author: authors.elementAt(index)));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Participant extends StatelessWidget {
  final Author author;

  const _Participant({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          author.name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        if (author.type.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("(${author.type})"),
          ),
        IconButton(
            onPressed: () {
              context.read<LobbyCubit>().add(QueueingUser(
                  name: author.name,
                  avatarUrl: author.avatarUrl,
                  type: author.type));
            },
            icon: const Icon(
              Icons.add,
              color: Colors.green,
              size: 18,
            ))
      ],
    );
  }
}
