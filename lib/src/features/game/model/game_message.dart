abstract class GameMessage {
  String get id;

  String get author;

  String get text;

  String get formattedTimestamp;

  GameMessage copyWith({required String text});
}
