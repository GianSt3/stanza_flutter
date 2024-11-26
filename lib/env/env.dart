import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'FIREBASE_API_KEY')
  static const String firebaseApiKey = _Env.firebaseApiKey;

  @EnviedField(varName: 'FIREBASE_MESSAGING_SENDER_ID')
  static const String messagingSenderId = _Env.messagingSenderId;
}
