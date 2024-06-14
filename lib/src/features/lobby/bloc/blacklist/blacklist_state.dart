part of 'blacklist_cubit.dart';

@freezed
class BlacklistState with _$BlacklistState {
  const factory BlacklistState({
    required BlacklistStatus status,
    @Default(<String>[]) List<String> lobby,
  }) = _BlacklistState;

  factory BlacklistState.fromJson(Map<String, Object?> json) =>
      _$BlacklistStateFromJson(json);
}

@freezed
class BlacklistStatus with _$BlacklistStatus {
  const factory BlacklistStatus.initial() = _BlacklistStatusInitial;

  factory BlacklistStatus.fromJson(Map<String, Object?> json) =>
      _$BlacklistStatusFromJson(json);
}
