part of 'firestore_chat_cubit.dart';

@freezed
class FirestoreChatState with _$FirestoreChatState {
  const FirestoreChatState._();

  const factory FirestoreChatState({
    required FirestoreChatStateStatus status,
    @Default(Chat(messages: <Message>[])) Chat chat,
  }) = _FirestoreChatState;
}

@freezed
class FirestoreChatStateStatus with _$FirestoreChatStateStatus {
  const FirestoreChatStateStatus._();

  const factory FirestoreChatStateStatus.initial() = _Initial;

  const factory FirestoreChatStateStatus.reading() = _Reading;

  const factory FirestoreChatStateStatus.error() = _Error;
}

class Chat extends Equatable {
  final List<Message> messages;

  const Chat({required this.messages});

  List<FirebaseAuthor> get authors =>
      messages.groupListsBy((message) => message.author).entries.map((e) {
        final authorMessages = e.value;
        authorMessages.sort((a, b) => a.timestamp.compareTo(b.timestamp));
        return FirebaseAuthor(
            name: e.key,
            lastActivityTimestamp:
                authorMessages.last.timestamp.millisecondsSinceEpoch);
      }).toList();

  @override
  List<Object?> get props => [messages];
}

class FirebaseAuthor extends Equatable {
  final String name;
  final int lastActivityTimestamp;

  const FirebaseAuthor(
      {required this.name, required this.lastActivityTimestamp});

  @override
  List<Object?> get props => [name, lastActivityTimestamp];
}

class Message extends Equatable implements GameMessage {
  final String deviceId;
  @override
  final String author;
  @override
  final String text;
  final Timestamp timestamp;

  const Message(
      {required this.deviceId,
      required this.author,
      required this.text,
      required this.timestamp});

  @override
  List<Object?> get props => [author, text, timestamp];

  @override
  GameMessage copyWith({required String text}) {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  String get id => "$author${timestamp.toString()}";

  @override
  String get formattedTimestamp => timestamp.toString();
}
