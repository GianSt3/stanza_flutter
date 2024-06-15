import 'dart:math';

import 'package:either_dart/either.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:flutter/services.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';

class SynthesizeUseCase
    extends FutureUseCase<Either<Exception, Uint8List>, TextToSpeechRequest> {
  SynthesizeUseCase();

  @override
  Future<Either<Exception, Uint8List>> call(
      {required TextToSpeechRequest params}) async {
    try {
      final files = [
        "caspita_ho_appena_lanciato_un_dado",
        "evviva_ho_lanciato_un_dado",
        "ma_siamo_sicuri_non_stia_barando",
        "non_ci_posso_credere",
        "un_tiro_molto_fortunato",
        "ehi_come_stai_amico_mio"
      ];
      final text = params.text;
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

      final result = (await rootBundle.load("assets/audio/$fileName.mp3"))
          .buffer
          .asUint8List();

      // Emulate connection delay
      await Future.delayed(Duration(milliseconds: 500 + Random().nextInt(900)));
      return Right(result);
    } catch (err) {
      return Left(Exception(err.toString()));
    }
  }
}
