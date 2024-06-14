part of 'lobby_cubit.dart';

@freezed
class LobbyState with _$LobbyState {
  const factory LobbyState({
    required LobbyStatus status,
    @Default(<QueueingUser>[]) List<QueueingUser> lobby,
  }) = _LobbyState;
}

@freezed
class LobbyStatus with _$LobbyStatus {
  const factory LobbyStatus.initial() = _LobbyStatusInitial;

  // To Lobby
  const factory LobbyStatus.added() = _LobbyStatusAdded;

  const factory LobbyStatus.removed() = _LobbyStatusRemoved;

  // To Game
  const factory LobbyStatus.random() = _LobbyStatusRandom;

  const factory LobbyStatus.promoted() = _LobbyStatusPromoted;

  const factory LobbyStatus.demoted() = _LobbyStatusDemoted;
}
