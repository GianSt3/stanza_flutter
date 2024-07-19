import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_state.dart';

part 'clock_cubit.freezed.dart';

class ClockCubit extends Cubit<ClockState> {
  ClockCubit() : super(const ClockState.initial()) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _clock();
    });
  }

  void _clock() {
    emit(const ClockState.wait());
    emit(ClockState.now(DateTime.now()));
  }
}
