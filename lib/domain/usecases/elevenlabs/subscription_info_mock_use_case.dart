import 'package:either_dart/either.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:stanza_scrapper/domain/usecases/elevenlabs/subscription_info_use_case.dart';

class SubscriptionInfoMockUseCase extends ISubscriptionInfoUseCase {
  SubscriptionInfoMockUseCase();

  int value = 0;

  static const threshold = 10000;

  @override
  Future<Either<Exception, SubscriptionInfo>> call() async {
    try {
      if (value < threshold) {
        value = value + 300;
      } else {
        value = 0;
      }
      final result = SubscriptionInfo(
          allowedToExtendCharacterLimit: false,
          canExtendCharacterLimit: false,
          canExtendVoiceLimit: false,
          canUseInstantVoiceCloning: false,
          canUseProfessionalVoiceCloning: false,
          characterCount: value,
          characterLimit: threshold,
          currency: '',
          nextCharacterCountResetUnix: 0,
          professionalVoiceLimit: 0,
          status: '',
          tier: '',
          voiceLimit: 0);
      return Right(result);
    } catch (err) {
      return Left(Exception(err.toString()));
    }
  }
}
