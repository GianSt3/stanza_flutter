import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playable_message_state.dart';
part 'playable_message_cubit.freezed.dart';

class PlayableMessageCubit extends Cubit<PlayableMessageState> {
  PlayableMessageCubit() : super(const PlayableMessageState.initial());
}
