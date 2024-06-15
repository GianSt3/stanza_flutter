import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/src/features/game/model/audio_message.dart';
import 'package:stanza_scrapper/utils/logger.dart';

import '../model/player.dart';

part 'game_state.dart';

part 'game_cubit.freezed.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(const GameState(status: GameStatus.initial()));

  void player(Player player) {
    var copy = state.players.toList();
    logger.d("GamePlayers ${copy.length}");
    if (copy.map((e) => e.name).contains(player.name)) {
      int index = copy.indexWhere((element) => element.name == player.name);
      copy.removeAt(index);
      copy.insert(index, player);
      logger.d("GamePlayers update $player");
    } else {
      logger.d("GamePlayers add $player");
      copy.add(player);
    }
    emit(state.copyWith(players: copy));
  }

  void removePlayer(String name) {
    var copy = state.players.toList();
    int index = copy.indexWhere((element) => element.name == name);
    if (index != -1) {
      copy.removeAt(index);
      emit(state.copyWith(players: copy));
    }
  }

  void start() {
    if (state.players.length < 3) {
      emit(state.copyWith(status: const GameStatus.initial()));
    } else {
      emit(state.copyWith(status: const GameStatus.start()));
    }
  }

  void stop() {
    emit(state.copyWith(status: const GameStatus.initial()));
  }
}
