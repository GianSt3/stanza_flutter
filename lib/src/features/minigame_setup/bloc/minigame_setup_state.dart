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
    PressedFirebase? press,
  }) = _MinigameSetupStateData;

  factory MinigameSetupStateData.empty() =>
      const MinigameSetupStateData(poll: null, perform: null, press: null);
}

class PressedFirebase {
  final bool pressed;
  final Timestamp timestamp;
  final Timestamp dueTime;

  PressedFirebase({
    required this.pressed,
    required this.timestamp,
    required this.dueTime,
  });

  factory PressedFirebase.pressed(Timestamp dueTime) {
    return PressedFirebase(
      pressed: true,
      timestamp: Timestamp.now(),
      dueTime: dueTime,
    );
  }

  factory PressedFirebase.fromJson(Map<String, dynamic> json) {
    return PressedFirebase(
      pressed: json['pressed'] as bool,
      timestamp: json['timestamp'] as Timestamp,
      dueTime: json['dueTime'] as Timestamp,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pressed': pressed,
      'timestamp': timestamp,
      'dueTime': dueTime,
    };
  }
}
