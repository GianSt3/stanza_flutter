import 'package:either_dart/either.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';

class MeUseCase extends UseCase<Either<Exception, String>, String> {
  static const command = "/me";

  @override
  Either<Exception, String> call({required String params}) {
    if (params.startsWith(command)) {
      return Right(params.replaceAll(command, "").trim());
    } else {
      return Left(Exception('Command not present.'));
    }
  }
}
