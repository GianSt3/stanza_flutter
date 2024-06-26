import 'package:bloc/bloc.dart';
import 'package:eleven_labs/eleven_labs.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/domain/usecases/elevenlabs/subscription_info_use_case.dart';
import 'package:stanza_scrapper/main.dart';

part 'api_quota_state.dart';

part 'api_quota_cubit.freezed.dart';

class ApiQuotaCubit extends Cubit<ApiQuotaState> {
  final SubscriptionInfoUseCase _subscriptionInfoUseCase =
      SubscriptionInfoUseCase(injector());

  ApiQuotaCubit() : super(const ApiQuotaState.initial());

  void check() async {
    emit(const ApiQuotaState.loading());
    final result = await _subscriptionInfoUseCase.call();
    if (result.isRight) {
      final info = result.right;

      final used = info.characterCount;
      final total = info.characterLimit;
      emit(ApiQuotaState.loaded(
          QuotaInfo(usedCharacters: used, totalCharacters: total)));
    }
  }
}
