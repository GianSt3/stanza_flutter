import 'dart:math';

import 'package:flutter/material.dart';

import '../model/message.dart';

String randomText() {
  final mockText = [
    "ciao caro mio",
    "Ehi come stai amico mio",
    "Non ci posso credere",
    "Come butta oggi? ",
    "Ho fatto un pessimo risultato",
    "Evviva, il punteggio più alto!",
    "Oggi non è proprio giornata",
    "È stato un tiro molto fortunato il suo, molto fortunato",
    "A me non capita mai una cosa del genere, chissà perché",
    "Non starà barando?",
  ];
  final rnd = Random();
  return mockText[rnd.nextInt(mockText.length)];
}

String randomAuthor() {
  final mockText = [
    "Cat",
    "Dog",
    "Elicopter",
    "Mouse",
  ];
  final rnd = Random();
  return mockText[rnd.nextInt(mockText.length)];
}

List<Message> randomMessages({int numberMessages = 1}) {
  List<Message> result = [];
  for (var i = 0; i < numberMessages; i++) {
    result.add(
      Message(
          id: UniqueKey().toString(),
          author: randomAuthor(),
          avatarUrl:
              "https://yt4.ggpht.com/BNbBwvNq1seIjO_lIzdq1X84JDvpWofXwJq_NLPFULD2Ic-tFPmgNePR3W0qcKd3pyiMvxLBYQ=s32-c-k-c0x00ffffff-no-rj",
          timestamp: "",
          text: randomText()),
    );
  }

  return result;
}
