import 'package:either_dart/either.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';

abstract class ISubscriptionInfoUseCase
    extends VoidFutureUseCase<Either<Exception, SubscriptionInfo>, void> {}

class SubscriptionInfoUseCase extends ISubscriptionInfoUseCase {
  final ElevenLabsInterface _elevenLabsInterface;

  SubscriptionInfoUseCase(this._elevenLabsInterface);

  @override
  Future<Either<Exception, SubscriptionInfo>> call() async {
    try {
      final result = await _elevenLabsInterface.getCurrentUserSubscription();
      return Right(result);
    } catch (err) {
      return Left(Exception(err.toString()));
    }
  }
}
