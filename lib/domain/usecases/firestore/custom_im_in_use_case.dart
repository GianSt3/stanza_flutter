import 'package:either_dart/either.dart';

import '../../../core/use_case/use_case.dart';

class CustomImInUseCase extends UseCase<Either<Exception, bool>, String> {
  static const message = 'custom_im_in';

  @override
  Either<Exception, bool> call({required String params}) {
    if (params.startsWith(message)) {
      return const Right(true);
    } else {
      return Left(Exception('Message not present.'));
    }
  }
}
