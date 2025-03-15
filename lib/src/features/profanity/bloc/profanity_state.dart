part of 'profanity_cubit.dart';

@freezed
class ProfanityState with _$ProfanityState {
  const factory ProfanityState.initial() = _Initial;

  const factory ProfanityState.loading() = _Loading;

  const factory ProfanityState.loaded(List<ProfanityWord> words) = _Loaded;
}
