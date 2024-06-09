part of 'eleven_labs_cubit.dart';

@freezed
class ElevenLabsState with _$ElevenLabsState {
  const factory ElevenLabsState({
    required ElevenLabStatus status,
  }) = _ElevenLabsState;
}

@freezed
class ElevenLabStatus with _$ElevenLabStatus {
  const factory ElevenLabStatus.initial() = _StatusInitial;

  const factory ElevenLabStatus.loading() = _StatusLoading;

  const factory ElevenLabStatus.spoke(
      String shortHash, Uint8List byteAudioVoice) = _StatusSpoke;

  const factory ElevenLabStatus.error(String error) = _StatusError;
}
