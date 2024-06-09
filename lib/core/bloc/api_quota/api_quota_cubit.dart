import 'package:bloc/bloc.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_quota_state.dart';

part 'api_quota_cubit.freezed.dart';

class ApiQuotaCubit extends Cubit<ApiQuotaState> {
  final ElevenLabsAPI api;

  ApiQuotaCubit(this.api) : super(const ApiQuotaState.initial());

  void check() async {
    emit(const ApiQuotaState.loading());
    final result = await api.getCurrentUserSubscription();
    final used = result.characterCount;
    final total = result.characterLimit;
    emit(ApiQuotaState.loaded(
        QuotaInfo(usedCharacters: used, totalCharacters: total)));
  }
}
