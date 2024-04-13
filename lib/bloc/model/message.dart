import 'package:equatable/equatable.dart';

class Message extends Equatable {
  const Message({
    required this.id,
    required this.author,
    required this.timestamp,
    required this.text,
  });

  final String id;
  final String author;
  final String timestamp;
  final String text;

  static Message fromJson(Map<String, dynamic> json) {
    return Message(
        id: json['id'],
        author: json['author'],
        timestamp: json['timestamp'],
        text: json['text']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['author'] = author;
    _data['timestamp'] = timestamp;
    _data['text'] = text;
    return _data;
  }

  @override
  List<Object?> get props => [id];

  @override
  String toString() {
    return "[$timestamp] $author: $text";
  }
}
