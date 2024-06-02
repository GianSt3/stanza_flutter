part of 'audio_player_cubit.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState({
    required AudioPlayerStatus status,
  }) = _AudioPlayerState;
}

@freezed
class AudioPlayerStatus with _$AudioPlayerStatus {

  const factory AudioPlayerStatus.stop() = _AudioPlayerStatusStop;

  const factory AudioPlayerStatus.playing(String authorName, String text) =
      _AudioPlayerStatusPlaying;
}
