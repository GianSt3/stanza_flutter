import 'package:either_dart/either.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';

class SubscriptionInfoUseCase
    extends FutureUseCase<Either<Exception, SubscriptionInfo>, void> {
  final ElevenLabsInterface _elevenLabsInterface;

  SubscriptionInfoUseCase(this._elevenLabsInterface);

  @override
  Future<Either<Exception, SubscriptionInfo>> call({void params}) async {
    try {
      final result = await _elevenLabsInterface.getCurrentUserSubscription();
      return Right(result);
    } catch (err) {
      return Left(Exception(err.toString()));
    }
  }
}
