part of 'dnd_cubit.dart';

@freezed
class DndState with _$DndState {
  const DndState._();

  const factory DndState(
      {required DndStatus status,
      @Default(<Player>[]) List<Player> players,
      @Default(<Player>[]) List<Player> lobby,
      @Default(<Message>[]) List<Message> playersMessages}) = _DndState;

  List<Player> get orderedPlayers =>
      players.toList()..sort((a, b) => a.position.compareTo(b.position));

  List<Message> playerMessage(Player player) => playersMessages
      .where((message) => message.author == player.name)
      .toList();
}

@freezed
class DndStatus with _$DndStatus {
  const factory DndStatus.initial() = _DndInitial;

  const factory DndStatus.chosen(Player player) = _DndChosen;

  const factory DndStatus.start() = _DndStart;

  const factory DndStatus.listen() = _DndListen;

  const factory DndStatus.stop() = _DndStop;
}

class Player extends Equatable {
  final int id;
  final String name;

  const Player({required this.id, required this.name});

  int get position => id + 1;

  @override
  List<Object?> get props => [id, name];
}
