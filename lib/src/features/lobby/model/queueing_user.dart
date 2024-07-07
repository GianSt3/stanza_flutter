import 'package:equatable/equatable.dart';

class QueueingUser extends Equatable {
  final DateTime created;
  final String name;
  final String type;
  final String avatarUrl;
  final bool nextPlayer;

  const QueueingUser(
      {required this.created,
      required this.name,
      required this.avatarUrl,
      this.nextPlayer = false,
      this.type = ""});

  factory QueueingUser.create(
          {required String name, required String avatarUrl, String? type}) =>
      QueueingUser(
          created: DateTime.now(),
          name: name,
          avatarUrl: avatarUrl,
          type: type ?? '');

  @override
  List<Object?> get props => [name, nextPlayer];

  QueueingUser copyWith(bool nextPlayer) {
    return QueueingUser(
        created: created,
        name: name,
        avatarUrl: avatarUrl,
        nextPlayer: nextPlayer,
        type: type);
  }
}
