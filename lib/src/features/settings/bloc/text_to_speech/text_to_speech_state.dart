part of 'text_to_speech_cubit.dart';

@freezed
class TextToSpeechState with _$TextToSpeechState {
  const factory TextToSpeechState({
    required TextToSpeechStatus status,
  }) = _ElevenLabsState;
}

@freezed
class TextToSpeechStatus with _$TextToSpeechStatus {
  const factory TextToSpeechStatus.initial() = _StatusInitial;

  const factory TextToSpeechStatus.loading() = _StatusLoading;

  const factory TextToSpeechStatus.spoke(
      String shortHash, Uint8List byteAudioVoice) = _StatusSpoke;

  const factory TextToSpeechStatus.error(String error) = _StatusError;
}
