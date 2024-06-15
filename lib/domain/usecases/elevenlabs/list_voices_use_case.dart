import 'package:either_dart/either.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';

class ListVoicesUseCase
    extends FutureUseCase<Either<Exception, List<Voice>>, void> {
  final ElevenLabsInterface _elevenLabsInterface;

  ListVoicesUseCase(this._elevenLabsInterface);

  @override
  Future<Either<Exception, List<Voice>>> call({void params}) async {
    try {
      final result = await _elevenLabsInterface.listVoices();
      return Right(result);
    } catch (err) {
      return Left(Exception(err.toString()));
    }
  }
}
