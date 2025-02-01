import 'package:eleven_labs/eleven_labs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../../../domain/usecases/elevenlabs/list_voices_use_case.dart';
import '../../../../../injection/dependency_injection.dart';

part 'default_voices_cubit.freezed.dart';
part 'default_voices_cubit.g.dart';
part 'default_voices_state.dart';

class DefaultVoicesCubit extends HydratedCubit<DefaultVoicesState> {
  final ListVoicesUseCase _listVoicesUseCase = ListVoicesUseCase(resolve());

  DefaultVoicesCubit()
      : super(DefaultVoicesState(
            status: const DefaultVoicesStatus.initial(), voices: []));

  void load() async {
    final result = await _listVoicesUseCase.call();
    if (result.isRight) {
      emit(state.copyWith(
          status: const DefaultVoicesStatus.loaded(), voices: result.right));
    } else {
      emit(state.copyWith(status: const DefaultVoicesStatus.error()));
    }
  }

  @override
  DefaultVoicesState? fromJson(Map<String, dynamic> json) {
    return DefaultVoicesState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DefaultVoicesState state) {
    return state.toJson();
  }
}
