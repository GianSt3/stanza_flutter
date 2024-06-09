part of 'api_quota_cubit.dart';

@freezed
class ApiQuotaState with _$ApiQuotaState {
  const factory ApiQuotaState.initial() = _Initial;

  const factory ApiQuotaState.loading() = _Loading;

  const factory ApiQuotaState.loaded(QuotaInfo info) = _Loaded;
}

class QuotaInfo extends Equatable {
  final int usedCharacters;
  final int totalCharacters;

  const QuotaInfo(
      {required this.usedCharacters, required this.totalCharacters});

  @override
  List<Object?> get props => [usedCharacters, totalCharacters];
}
