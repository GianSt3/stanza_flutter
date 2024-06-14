import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'blacklist_state.dart';

part 'blacklist_cubit.freezed.dart';

part 'blacklist_cubit.g.dart';

class BlacklistCubit extends HydratedCubit<BlacklistState> {
  BlacklistCubit()
      : super(const BlacklistState(status: BlacklistStatus.initial()));

  @override
  BlacklistState? fromJson(Map<String, dynamic> json) {
    return BlacklistState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(BlacklistState state) {
    return state.toJson();
  }
}
