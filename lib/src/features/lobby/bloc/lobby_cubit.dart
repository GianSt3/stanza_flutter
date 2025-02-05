import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/utils.dart';
import '../model/queueing_user.dart';

part 'lobby_cubit.freezed.dart';
part 'lobby_state.dart';

class LobbyCubit extends Cubit<LobbyState> {
  LobbyCubit() : super(const LobbyState(status: LobbyStatus.initial()));

  void add(QueueingUser author) {
    emit(state.copyWith(
        lobby: {...state.lobby, author}.toList(),
        status: const LobbyStatus.added()));
  }

  void promote(QueueingUser author) {
    var copy = state.lobby.toList();
    final index = copy.indexWhere((element) => element.name == author.name);
    copy.removeAt(index);
    copy.insert(index, author.copyWith(true));
    emit(state.copyWith(lobby: copy, status: const LobbyStatus.promoted()));
  }

  void demote(QueueingUser author) {
    var copy = state.lobby.toList();
    final index = copy.indexWhere((element) => element.name == author.name);
    copy.removeAt(index);
    copy.insert(index, author.copyWith(false));
    emit(state.copyWith(lobby: copy, status: const LobbyStatus.demoted()));
  }

  void remove(QueueingUser author) {
    var copy = state.lobby.toList();
    copy.removeAt(copy.indexWhere((element) => element.name == author.name));
    emit(state.copyWith(lobby: copy, status: const LobbyStatus.removed()));
  }

  void random({List<String>? blacklist}) {
    const choice = 3;

    var userList = state.lobby
        .where((element) => !(blacklist?.contains(element.name) ?? false));

    final alreadyChosen =
        userList.where((element) => element.nextPlayer).toList();
    final userLeft = userList.where((element) => !element.nextPlayer).toList();
    logger.d('alreadyChosen ${alreadyChosen.length} left: ${userLeft.length}');

    if (alreadyChosen.isEmpty && userLeft.length == choice) {
      logger.d('Empty');
      emit(state.copyWith(
          lobby: userLeft.map((e) => e.copyWith(true)).toList()));
    } else if (userLeft.length > choice - alreadyChosen.length) {
      logger.d('Random');
      Random random = Random();
      List<QueueingUser> randomUsers = [];

      for (var i = 0; i < choice - alreadyChosen.length; i++) {
        int counter = 0;
        QueueingUser randomUser;
        do {
          randomUser = userLeft.elementAt(random.nextInt(userLeft.length));
          logger.d('Random ${randomUser.name}');
          counter++;
          if (counter > 50) {
            break;
          }
        } while (randomUsers.contains(randomUser));

        logger.d('Chose $randomUser');
        randomUsers.add(randomUser);
      }

      logger.d('Choosen list $randomUsers');

      var copy = state.lobby.toList();
      for (var i = 0; i < randomUsers.length; i++) {
        final int index = copy.indexWhere(
            (element) => element.name == randomUsers.elementAt(i).name);
        copy.removeAt(index);
        copy.insert(index, randomUsers.elementAt(i).copyWith(true));
      }
      emit(state.copyWith(lobby: copy));
    } else {
      logger.d('Not so many player :(');
    }
  }
}
