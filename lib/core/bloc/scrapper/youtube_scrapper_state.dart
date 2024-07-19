part of 'youtube_scrapper_cubit.dart';

@freezed
class YoutubeScrapperState with _$YoutubeScrapperState {
  const YoutubeScrapperState._();

  const factory YoutubeScrapperState({
    required YoutubeScrapperStatus status,
    @Default(Chat(messages: <YoutubeMessage>[])) Chat chat,
  }) = _YoutubeScrapperState;

  YoutubeMessage lastMessage(String authorName) =>
      chat.messages.where((message) => message.author == authorName).last;

  YoutubeMessage? lastNewMessage(String authorName) => chat.newMessages
      .where((message) => message.author == authorName)
      .lastOrNull;
}

@freezed
class YoutubeScrapperStatus with _$YoutubeScrapperStatus {
  const YoutubeScrapperStatus._();

  const factory YoutubeScrapperStatus.initial() = _Initial;

  const factory YoutubeScrapperStatus.ready() = _Ready;

  const factory YoutubeScrapperStatus.reading() = _Reading;

  const factory YoutubeScrapperStatus.stop() = _Stop;

  const factory YoutubeScrapperStatus.error() = _Error;
}

class Chat extends Equatable {
  final List<YoutubeMessage> messages;
  final String? lastMessageId;

  const Chat({required this.messages, this.lastMessageId});

  List<Author> get authors =>
      messages.groupListsBy((element) => element.author).entries.map((e) {
        final lastMessage = e.value.last;
        return Author(
            name: e.key,
            avatarUrl: lastMessage.avatarUrl,
            type: lastMessage.authorType ?? "",
            messageTimestamp: lastMessage.created);
      }).toList();

  List<YoutubeMessage> get newMessages =>
      lastMessageId == null ? messages : getNewMessages();

  List<YoutubeMessage> getNewMessages() {
    final indexLastMessage = messages.indexOf(
        messages.reversed.firstWhere((element) => element.id == lastMessageId));

    final newMessages =
        messages.getRange(indexLastMessage + 1, messages.length);
    return newMessages.toList();
  }

  Chat copyWith(List<YoutubeMessage> newMessages) {
    return Chat(
        lastMessageId: messages.isEmpty ? null : messages.last.id,
        messages: <YoutubeMessage>{...messages, ...newMessages}.toList());
  }

  @override
  List<Object?> get props => [messages];
}

class Author extends Equatable {
  final String name;
  final String avatarUrl;
  final String type;
  final int messageTimestamp;

  const Author(
      {required this.name,
      required this.avatarUrl,
      required this.type,
      required this.messageTimestamp});

  @override
  List<Object?> get props => [name];
}
