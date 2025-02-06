part of 'minigame_setup_cubit.dart';

@freezed
class MinigameSetupState with _$MinigameSetupState {
  const MinigameSetupState._();

  const factory MinigameSetupState({
    required MinigameSetupStateStatus status,
    required MinigameSetupStateData data,
  }) = _MinigameSetupState;
}

@freezed
class MinigameSetupStateStatus with _$MinigameSetupStateStatus {
  const factory MinigameSetupStateStatus.idle() = _Idle;

  const factory MinigameSetupStateStatus.poll() = _Poll;

  const factory MinigameSetupStateStatus.press() = _Press;

  const factory MinigameSetupStateStatus.perform() = _Perform;

  const factory MinigameSetupStateStatus.reset() = _Reset;
}

@freezed
class MinigameSetupStateData with _$MinigameSetupStateData {
  const factory MinigameSetupStateData({
    PollFirebase? poll,
    PerformFirebase? perform,
  }) = _MinigameSetupStateData;
}
