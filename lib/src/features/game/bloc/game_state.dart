part of 'game_cubit.dart';

@freezed
class GameState with _$GameState {
  const GameState._();

  const factory GameState(
      {required GameStatus status,
      @Default(<Player>[]) List<Player> players}) = _GameState;

  bool get canStart => players.length >= 3;
}

@freezed
class GameStatus with _$GameStatus {
  const factory GameStatus.initial() = _GameStatusInitial;

  const factory GameStatus.start() = _GameStatusStart;

  const factory GameStatus.mute() = _GameStatusMute;

  const factory GameStatus.stop() = _GameStatusStop;
}
