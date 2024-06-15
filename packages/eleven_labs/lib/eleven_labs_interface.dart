import 'dart:typed_data';

import 'elevenlabs_config.dart';
import 'elevenlabs_types.dart';

abstract class ElevenLabsInterface {
  Future<void> init({
    required ElevenLabsConfig config,
  });

  Future<Uint8List> synthesize(TextToSpeechRequest request);
}
