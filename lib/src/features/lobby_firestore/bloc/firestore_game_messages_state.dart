part of 'firestore_game_messages_cubit.dart';

@freezed
class FirestoreGameMessagesState with _$FirestoreGameMessagesState {
  const factory FirestoreGameMessagesState.initial(
      Timestamp lastTimestamp, List<Player> players, bool playable) = _Initial;

  const factory FirestoreGameMessagesState.reading(
      Timestamp lastTimestamp, List<Player> players, bool playable) = _Reading;
}
