part of 'api_key_cubit.dart';

@freezed
class ApiKeyState with _$ApiKeyState {
  const factory ApiKeyState.initial() = _Initial;
  const factory ApiKeyState.loaded(String apiKey) = _Loaded;

  factory ApiKeyState.fromJson(Map<String, Object?> json) =>
      _$ApiKeyStateFromJson(json);
}
