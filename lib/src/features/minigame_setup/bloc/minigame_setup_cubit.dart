import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../perform/model/perform.dart';
import '../poll/model/poll.dart';

part 'minigame_setup_cubit.freezed.dart';
part 'minigame_setup_state.dart';

class MinigameSetupCubit extends Cubit<MinigameSetupState> {
  MinigameSetupCubit()
      : super(
          const MinigameSetupState(
            status: MinigameSetupStateStatus.idle(),
            data: MinigameSetupStateData(poll: null, perform: null),
          ),
        );

  void setPoll(Poll poll) {
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.poll(),
      data: state.data.copyWith(poll: poll),
    ));
  }

  void setPerform(Perform perform) {
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.perform(),
      data: state.data.copyWith(perform: perform),
    ));
  }

  void reset() {
    emit(state.copyWith(
      status: const MinigameSetupStateStatus.reset(),
      data: const MinigameSetupStateData(poll: null, perform: null),
    ));
  }

  @override
  Future<void> close() async {
    reset();
    super.close();
  }
}
