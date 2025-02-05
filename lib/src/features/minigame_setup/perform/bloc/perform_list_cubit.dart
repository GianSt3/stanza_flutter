import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../model/perform.dart';

part 'perform_list_cubit.freezed.dart';
part 'perform_list_cubit.g.dart';
part 'perform_list_state.dart';

class PerformListCubit extends HydratedCubit<PerformListState> {
  PerformListCubit() : super(const PerformListState.initial([]));

  void add(String title, String content) {
    final newPerform = Perform(title: title, content: content);
    final updatedPerforms = List<Perform>.from(state.performs)..add(newPerform);
    emit(PerformListState.loaded(updatedPerforms));
  }

  void remove(String title) {
    final updatedPerforms =
        state.performs.where((perform) => perform.title != title).toList();
    emit(PerformListState.loaded(updatedPerforms));
  }

  void setFavorite(String title, bool favorite) {
    final updatedPerforms = state.performs.map((perform) {
      if (perform.title == title) {
        return perform.copyWith(favorite: favorite);
      }
      return perform;
    }).toList();
    emit(PerformListState.loaded(updatedPerforms));
  }

  @override
  PerformListState fromJson(Map<String, dynamic> json) {
    return PerformListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(PerformListState state) {
    return state.toJson();
  }

  void select(Perform perform) {}
}
