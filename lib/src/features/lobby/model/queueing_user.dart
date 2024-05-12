import 'package:equatable/equatable.dart';

class QueueingUser extends Equatable {
  final String name;
  final String avatarUrl;
  final bool nextPlayer;

  const QueueingUser(
      {required this.name, required this.avatarUrl, this.nextPlayer = false});

  @override
  List<Object?> get props => [name, nextPlayer];

  QueueingUser copyWith(bool nextPlayer) {
    return QueueingUser(
        name: name, avatarUrl: avatarUrl, nextPlayer: nextPlayer);
  }
}
