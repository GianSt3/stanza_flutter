part of 'poll_list_cubit.dart';

@freezed
class PollListState with _$PollListState {
  const factory PollListState.initial(List<Poll> polls) = _Initial;

  const factory PollListState.loaded(List<Poll> polls) = _Loaded;

  factory PollListState.fromJson(Map<String, Object?> json) =>
      _$PollListStateFromJson(json);
}
