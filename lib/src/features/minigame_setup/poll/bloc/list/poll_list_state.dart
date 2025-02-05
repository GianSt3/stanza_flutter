part of 'poll_list_cubit.dart';

@freezed
class PollListState with _$PollListState {
  const PollListState._();

  const factory PollListState.initial(List<Poll> polls) = _Initial;

  const factory PollListState.loaded(List<Poll> polls) = _Loaded;

  List<Poll> get favoritePolls =>
      polls.where((poll) => poll.isFavorite).toList();

  List<Poll> get sortedPolls {
    final sorted = polls.toList();
    sorted.sort((a, b) => a.question.compareTo(b.question));
    sorted.sort((a, b) => a.favorite == b.favorite
        ? 0
        : a.isFavorite
            ? -1
            : 1);
    return sorted;
  }

  factory PollListState.fromJson(Map<String, Object?> json) =>
      _$PollListStateFromJson(json);
}
