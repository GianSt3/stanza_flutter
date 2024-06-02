part of 'queued_messages_cubit.dart';

@freezed
class QueuedMessagesState with _$QueuedMessagesState {
  const QueuedMessagesState._();

  const factory QueuedMessagesState(
      {required QueuedMessagesStatus status,
      @Default(<Player, String>{}) Map<Player, String> lastPlayerMessages,
      @Default(<QueuedAudioMessage>[])
      List<QueuedAudioMessage> audioMessages}) = _QueuedMessageState;
}

@freezed
class QueuedMessagesStatus with _$QueuedMessagesStatus {
  const factory QueuedMessagesStatus.initial() = _InitialStatus;

  const factory QueuedMessagesStatus.queued() = _QueuedStatus;

  const factory QueuedMessagesStatus.played() = _QueuedPlayed;

  const factory QueuedMessagesStatus.loaded() = _LoadedStatus;

  const factory QueuedMessagesStatus.play(QueuedAudioMessage audioMessage) =
      _PlayStatus;

  const factory QueuedMessagesStatus.loading() = _LoadingStatus;
}

class QueueMessage extends Equatable {
  final Player player;
  final String text;
  final DateTime created;

  QueueMessage({
    required this.player,
    required this.text,
  }) : created = DateTime.now();

  @override
  List<Object?> get props => [player, text, created];
}

class QueuedAudioMessage extends Equatable {
  final QueueMessage message;
  final BytesSource audio;

  const QueuedAudioMessage({required this.message, required this.audio});

  @override
  List<Object?> get props => [
        message,
      ];
}
