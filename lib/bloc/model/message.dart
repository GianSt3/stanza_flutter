import 'package:equatable/equatable.dart';

class Message extends Equatable {
  const Message(
      {required this.id,
      required this.author,
      required this.avatarUrl,
      required this.timestamp,
      required this.text,
      this.authorType});

  final String id;
  final String author;
  final String timestamp;
  final String? authorType;
  final String avatarUrl;
  final String text;

  static Message fromJson(Map<String, dynamic> json) {
    return Message(
        id: json['id'],
        author: json['author'],
        avatarUrl: json['avatarUrl'],
        timestamp: json['timestamp'],
        text: json['text'],
        authorType: json['authorType']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['author'] = author;
    _data['avatarUrl'] = avatarUrl;
    _data['timestamp'] = timestamp;
    _data['text'] = text;
    _data['authorType'] = authorType;
    return _data;
  }

  @override
  List<Object?> get props => [id];

  @override
  String toString() {
    return "[$timestamp] [$authorType] $avatarUrl - $author: $text";
  }
}
