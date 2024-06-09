import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'api_key_state.dart';

part 'api_key_cubit.freezed.dart';

part 'api_key_cubit.g.dart';

class ApiKeyCubit extends HydratedCubit<ApiKeyState> {
  ApiKeyCubit() : super(const ApiKeyState.initial());

  void store(String apiKey) {
    emit(ApiKeyState.loaded(apiKey));
  }

  @override
  ApiKeyState? fromJson(Map<String, dynamic> json) {
    return ApiKeyState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ApiKeyState state) {
    return state.toJson();
  }
}
