part of 'eleven_labs_cubit.dart';

@freezed
class ElevenLabsState with _$ElevenLabsState {
  const factory ElevenLabsState(
      {required ElevenLabStatus status,
      @Default(ElevenLabsVoiceList(voices: <ElevenLabsVoice>[]))
      ElevenLabsVoiceList voices}) = _ElevenLabsState;
}

@freezed
class ElevenLabStatus with _$ElevenLabStatus {
  const factory ElevenLabStatus.initial() = _StatusInitial;

  const factory ElevenLabStatus.loading() = _StatusLoading;

  const factory ElevenLabStatus.spoke(
      String shortHash, Uint8List byteAudioVoice) = _StatusSpoke;

  const factory ElevenLabStatus.voicesLoaded() = _VoicesLoaded;
}

class ElevenLabsVoiceList extends Equatable {
  final List<ElevenLabsVoice> voices;

  const ElevenLabsVoiceList({required this.voices});

  @override
  List<Object?> get props => [voices];
}

class ElevenLabsVoice extends Equatable {
  final String voiceId;

  const ElevenLabsVoice({required this.voiceId});

  @override
  List<Object?> get props => [voiceId];
}
