import 'dart:math';

import 'package:flutter/material.dart';

import '../model/message.dart';

String randomText() {
  final mockText = [
    "Caspita, ho appena lanciato un dado e ho fatto un pessimo risultato",
    "Evviva, ho lanciato un dado e ho ottenuto il punteggio più alto!",
    "Ehi ma siamo sicuri che non stia barando?",
    "Come stai amico mio?",
    "Un tiro molto fortunato il suo, molto fortunato",
    "Non ci posso credere, oggi non è proprio giornata",
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
