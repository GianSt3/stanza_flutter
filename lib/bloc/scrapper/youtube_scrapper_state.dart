part of 'youtube_scrapper_cubit.dart';

@freezed
class YoutubeScrapperState with _$YoutubeScrapperState {
  const factory YoutubeScrapperState({
    required YoutubeScrapperStatus status,
    @Default(Chat(messages: <Message>[])) Chat chat,
  }) = _YoutubeScrapperState;
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
  final List<Message> messages;
  final String? lastMessageId;

  const Chat({required this.messages, this.lastMessageId});

  List<Author> get authors => Set.of(
          messages.map((m) => Author(name: m.author, avatarUrl: m.avatarUrl)))
      .toList();

  List<Message> get newMessages => lastMessageId == null
      ? messages
      : messages
          .getRange(
              messages.indexOf(messages.reversed
                  .firstWhere((element) => element.id == lastMessageId)),
              messages.length - 1)
          .toList();

  Chat copyWith(List<Message> newMessages) {
    return Chat(
        lastMessageId: messages.isEmpty ? null : messages.last.id,
        messages: <Message>{...messages, ...newMessages}.toList());
  }

  @override
  List<Object?> get props => [messages];
}

class Author extends Equatable {
  final String name;
  final String avatarUrl;

  const Author({required this.name, required this.avatarUrl});

  @override
  List<Object?> get props => [name];
}

