part of 'clock_cubit.dart';

@freezed
class ClockState with _$ClockState {
  const factory ClockState.initial() = _Initial;

  const factory ClockState.now(DateTime now) = _Now;

  const factory ClockState.wait() = _Wait;
}
