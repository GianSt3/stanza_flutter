import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/custom_voice_cubit.dart';

import '../model/player.dart';

part 'game_state.dart';

part 'game_cubit.freezed.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(const GameState(status: GameStatus.initial()));

  void player(Player player) {
    var copy = state.players.toList();
    print("GamePlayers ${copy.length}");
    if (copy.contains(player)) {
      int index = copy.indexWhere((element) => element.name == player.name);
      copy.removeAt(index);
      copy.insert(index, player);
      print("GamePlayers update ${player}");
    } else {
      print("GamePlayers add ${player}");
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
}
