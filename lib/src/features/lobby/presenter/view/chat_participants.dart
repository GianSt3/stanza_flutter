import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/bloc/lobby_cubit.dart';
import 'package:stanza_scrapper/src/features/lobby/model/queueing_user.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/widget/chat_card_widget.dart';
import 'package:stanza_scrapper/utils/participant_icon_extension.dart';

class ChatParticipants extends StatelessWidget {
  const ChatParticipants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Chat Participants",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
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
      ],
    );
  }
}

class _Participant extends StatelessWidget {
  final Author author;

  const _Participant({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: author.type.getIcon(),
        title: Text(author.name),
        subtitle: author.type.isNotEmpty ? Text(author.type) : null,
        trailing: IconButton(
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
            )),
      ),
    );
  }
}
