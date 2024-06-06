import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

Future<List<Message>> randomMessages({int numberMessages = 1}) async {
  List<Message> result = [];
  for (var i = 0; i < numberMessages; i++) {
    await Future.delayed(Duration(milliseconds: 250));
    final now = DateTime.now();
    result.add(
      Message(
          id: UniqueKey().toString(),
          author: randomAuthor(),
          avatarUrl:
              "https://yt4.ggpht.com/BNbBwvNq1seIjO_lIzdq1X84JDvpWofXwJq_NLPFULD2Ic-tFPmgNePR3W0qcKd3pyiMvxLBYQ=s32-c-k-c0x00ffffff-no-rj",
          timestamp: "${now.hour}:${now.minute}:${now.second}",
          text: randomText()),
    );
  }

  return result;
}

Future<Uint8List> getAudio(String text) async {
  final files = [
    "caspita_ho_appena_lanciato_un_dado",
    "evviva_ho_lanciato_un_dado",
    "ma_siamo_sicuri_non_stia_barando",
    "non_ci_posso_credere",
    "un_tiro_molto_fortunato",
    "ehi_come_stai_amico_mio"
  ];
  final fileName = text.startsWith("Caspita")
      ? files[0]
      : text.startsWith("Evviva")
          ? files[1]
          : text.startsWith("Ehi")
              ? files[2]
              : text.startsWith("Non")
                  ? files[3]
                  : text.startsWith("Un")
                      ? files[4]
                      : text.startsWith("Come")
                          ? files[5]
                          : files[5];
  // logger.d("Text: $text => Audio $fileName");
  final result = (await rootBundle.load("assets/audio/$fileName.mp3"))
      .buffer
      .asUint8List();
  return result;
}
