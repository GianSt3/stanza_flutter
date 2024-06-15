import 'dart:typed_data';

import 'package:either_dart/either.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';

class SynthesizeUseCase
    extends FutureUseCase<Either<Exception, Uint8List>, TextToSpeechRequest> {
  final ElevenLabsInterface _elevenLabsInterface;

  SynthesizeUseCase(this._elevenLabsInterface);

  @override
  Future<Either<Exception, Uint8List>> call(
      {required TextToSpeechRequest params}) async {
    try {
      final result = await _elevenLabsInterface.synthesize(params);
      return Right(result);
    } catch (err) {
      return Left(Exception(err.toString()));
    }
  }
}
