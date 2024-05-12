import 'package:eleven_labs/eleven_labs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'eleven_labs_voice_state.dart';

part 'eleven_labs_voice_cubit.freezed.dart';

part 'eleven_labs_voice_cubit.g.dart';

class ElevenLabsVoiceCubit extends HydratedCubit<ElevenLabsVoiceState> {
  final ElevenLabsAPI api;

  ElevenLabsVoiceCubit(this.api)
      : super(ElevenLabsVoiceState(
            status: const ElevenLabsVoiceStatus.initial(), voices: []));

  void load() async {
    try {
      final voices = await api.listVoices();
      emit(state.copyWith(
          status: const ElevenLabsVoiceStatus.loaded(), voices: voices));
    } catch (err) {
      print(err);
      emit(state.copyWith(status: const ElevenLabsVoiceStatus.error()));
    }
  }

  @override
  ElevenLabsVoiceState? fromJson(Map<String, dynamic> json) {
    return ElevenLabsVoiceState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ElevenLabsVoiceState state) {
    return state.toJson();
  }
}
