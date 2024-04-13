part of 'youtube_scrapper_cubit.dart';

@freezed
class YoutubeScrapperState with _$YoutubeScrapperState {
  const factory YoutubeScrapperState({
    required YoutubeScrapperStatus status,
    @Default(Chat(messages: <Message>[])) Chat chat,
    @Default(Filter(authors: <String>[])) Filter filter,
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

  List<String> get authors => Set.of(messages.map((e) => e.author)).toList();

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
        messages: Set.of([...messages, ...newMessages]).toList());
  }

  @override
  List<Object?> get props => [messages];
}

class Filter extends Equatable {
  final List<String> authors;

  const Filter({required this.authors});

  Filter _add(String author) {
    List<String> copy = List.from(authors);
    copy.add(author);
    return Filter(authors: copy);
  }

  Filter _remove(String author) {
    List<String> copy = List.from(authors);
    copy.remove(author);
    return Filter(authors: copy);
  }

  Filter copyWith(String author) {
    return authors.contains(author) ? _remove(author) : _add(author);
  }

  @override
  List<Object?> get props => [authors];
}
