import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:stanza_scrapper/src/features/poll/model/poll.dart';

part 'poll_list_cubit.freezed.dart';
part 'poll_list_cubit.g.dart';
part 'poll_list_state.dart';

class PollListCubit extends HydratedCubit<PollListState> {
  PollListCubit() : super(const PollListState.initial([]));

  void add(String question, List<String> answers) {
    final polls = state.polls.toList();
    polls.add(Poll(question: question, answers: answers));
    emit(PollListState.loaded(polls));
  }

  void remove(String question) {
    final polls = state.polls.toList();
    polls.removeWhere((poll) => poll.question == question);
    emit(PollListState.loaded(polls));
  }

  @override
  PollListState? fromJson(Map<String, dynamic> json) {
    return PollListState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PollListState state) {
    return state.toJson();
  }
}
