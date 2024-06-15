import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/services.dart';








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
  // Emulate connection delay
  await Future.delayed(Duration(milliseconds: 500 + Random().nextInt(900)));
  return result;
}
