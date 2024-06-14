part of 'game_messages_cubit.dart';

@freezed
class GameMessagesState with _$GameMessagesState {
  const GameMessagesState._();

  const factory GameMessagesState({
    required GameMessagesStatus status,
    required GameMessagesLoadStatus apiStatus,
    @Default(<AudioMessage>[]) List<AudioMessage> messages,
    @Default(<AudioMessage>[]) List<AudioMessage> lastPlayerMessages,
  }) = _GameMessagesState;

  bool get canPop => messages.isNotEmpty && messages.last.source != null;
}

@freezed
class GameMessagesStatus with _$GameMessagesStatus {
  const factory GameMessagesStatus.initial() = _StatusInitial;

  const factory GameMessagesStatus.added() = _StatusAdded;

  const factory GameMessagesStatus.loaded() = _StatusLoaded;

  const factory GameMessagesStatus.error(dynamic error, String message) =
      _StatusError;

  const factory GameMessagesStatus.pop(AudioMessage message) = _StatusPop;
}

@freezed
class GameMessagesLoadStatus with _$GameMessagesLoadStatus {
  const factory GameMessagesLoadStatus.initial() = _ApiInitial;

  const factory GameMessagesLoadStatus.loading() = _ApiLoading;

  const factory GameMessagesLoadStatus.loaded() = _ApiLoaded;
}
