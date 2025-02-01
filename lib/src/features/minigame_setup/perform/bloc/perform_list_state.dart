part of 'perform_list_cubit.dart';

@freezed
class PerformListState with _$PerformListState {
  const factory PerformListState.initial(List<Perform> performs) = _Initial;

  const factory PerformListState.loaded(List<Perform> performs) = _Loaded;

  factory PerformListState.fromJson(Map<String, Object?> json) =>
      _$PerformListStateFromJson(json);
}
