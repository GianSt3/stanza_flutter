part of 'perform_list_cubit.dart';

@freezed
class PerformListState with _$PerformListState {
  const PerformListState._();

  const factory PerformListState.initial(List<Perform> performs) = _Initial;

  const factory PerformListState.loaded(List<Perform> performs) = _Loaded;

  List<Perform> get favoritePerforms =>
      performs.where((perform) => perform.isFavorite).toList();

  List<Perform> get sortedPerforms {
    final sorted = performs.toList();
    sorted.sort((a, b) => a.title.compareTo(b.title));
    sorted.sort((a, b) => a.isFavorite == b.isFavorite
        ? 0
        : a.isFavorite
            ? -1
            : 1);
    return sorted;
  }

  factory PerformListState.fromJson(Map<String, Object?> json) =>
      _$PerformListStateFromJson(json);
}
