import 'package:flutter/material.dart';
import 'package:stanza_scrapper/src/widget/chat_authors_widget.dart';
import 'package:stanza_scrapper/src/widget/chat_filtered_messages_widget.dart';
import 'package:stanza_scrapper/src/widget/chat_new_messages_widget.dart';
import 'package:stanza_scrapper/src/widget/chat_widget.dart';

class Stanza extends StatelessWidget {
  const Stanza({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(flex: 2,child: ChatAuthorsWidget()),
        Divider(color: Colors.green),
        Flexible(flex: 1, child: ChatWidget()),
        Divider(color: Colors.green),
        Flexible(flex: 1, child: ChatFilteredMessagesWidget())
      ],
    );
  }
}
