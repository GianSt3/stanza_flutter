part of 'playable_message_cubit.dart';

@freezed
class PlayableMessageState with _$PlayableMessageState {
  const factory PlayableMessageState.initial(String timestamp, String text) = _Initial;

  const factory PlayableMessageState.loading(String timestamp, String text) = _Loading;
  const factory PlayableMessageState.play(String timestamp, String text, BytesSource? audio) = _Play;
}
