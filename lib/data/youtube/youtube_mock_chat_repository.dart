import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';
import 'package:stanza_scrapper/domain/youtube/youtube_chat_repository_interface.dart';
import 'package:stanza_scrapper/utils/logger.dart';

class YoutubeMockChatRepository extends YoutubeChatRepositoryInterface {
  @override
  Future<List<YoutubeMessage>> getMessages() async {
    // Random waiting...
    await Future.delayed(Duration(seconds: 1 + Random().nextInt(5)));
    // Response
    return await _randomMessages(numberMessages: Random().nextInt(5));
  }

  @override
  Future<void> init({required String liveId}) async {
    logger.d('Mock Youtube Repository');
  }
}

String _randomText() {
  final mockText = [
    "Caspita, ho appena lanciato un dado e ho fatto un pessimo risultato",
    "Caspita, ho appena lanciato un dado e ho fatto un pessimo risultato, HO DETTO Caspita, ho appena lanciato un dado e ho fatto un pessimo risultato",
    "Evviva, ho lanciato un dado e ho ottenuto il punteggio più alto!",
    "Ehi ma siamo sicuri che non stia barando?",
    "Come stai amico mio?",
    "Un tiro molto fortunato il suo, molto fortunato",
    "Un tiro molto fortunato il suo, molto fortunato - Un tiro molto fortunato il suo, molto fortunato - ",
    "Non ci posso credere, oggi non è proprio giornata",
    "/me Questo è un messaggio fuori character"
        "/d20"
  ];
  final rnd = Random();
  return mockText[rnd.nextInt(mockText.length)];
}

MapEntry<String, String> _randomAuthor() {
  final mockText = {
    "Cat": "owner",
    "Dog": "moderator",
    "Elicopter": "",
    "Mouse": "member",
  };
  final rnd = Random();
  final rndIndex = rnd.nextInt(mockText.length);
  final entry =
      mockText.entries.whereIndexed((index, entry) => index == rndIndex).first;

  return entry;
}

Future<List<YoutubeMessage>> _randomMessages({int numberMessages = 1}) async {
  List<YoutubeMessage> result = [];
  for (var i = 0; i < numberMessages; i++) {
    await Future.delayed(const Duration(milliseconds: 250));
    final now = DateTime.now();
    final author = _randomAuthor();
    result.add(
      YoutubeMessage(
          id: UniqueKey().toString(),
          author: author.key,
          authorType: author.value,
          avatarUrl:
              "https://yt4.ggpht.com/BNbBwvNq1seIjO_lIzdq1X84JDvpWofXwJq_NLPFULD2Ic-tFPmgNePR3W0qcKd3pyiMvxLBYQ=s32-c-k-c0x00ffffff-no-rj",
          timestamp: "${now.hour}:${now.minute}:${now.second}",
          created: now.millisecondsSinceEpoch,
          text: _randomText()),
    );
  }

  return result;
}
