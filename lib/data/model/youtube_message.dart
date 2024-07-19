import 'package:equatable/equatable.dart';

class YoutubeMessage extends Equatable {
  const YoutubeMessage(
      {required this.id,
      required this.author,
      required this.avatarUrl,
      required this.created,
      required this.timestamp,
      required this.text,
      this.authorType});

  final String id;
  final String author;
  final String timestamp;
  final int created;
  final String? authorType;
  final String avatarUrl;
  final String text;

  static YoutubeMessage fromJson(Map<String, dynamic> json) {
    return YoutubeMessage(
        id: json['id'],
        author: json['author'],
        avatarUrl: json['avatarUrl'],
        timestamp: json['timestamp'],
        created: DateTime.now().millisecondsSinceEpoch,
        text: json['text'],
        authorType: json['authorType']);
  }

  YoutubeMessage copyWith({String? text}) {
    return YoutubeMessage(
        id: id,
        author: author,
        avatarUrl: avatarUrl,
        timestamp: timestamp,
        created: created,
        text: text ?? this.text);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['author'] = author;
    data['avatarUrl'] = avatarUrl;
    data['timestamp'] = timestamp;
    data['created'] = created;
    data['text'] = text;
    data['authorType'] = authorType;
    return data;
  }

  @override
  List<Object?> get props => [id];

  @override
  String toString() {
    return "[$id]-$timestamp - $author: $text";
  }
}
