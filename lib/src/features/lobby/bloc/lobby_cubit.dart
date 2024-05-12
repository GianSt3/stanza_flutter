import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';

import '../model/queueing_user.dart';

part 'lobby_state.dart';

part 'lobby_cubit.freezed.dart';

class LobbyCubit extends Cubit<LobbyState> {
  LobbyCubit() : super(const LobbyState(status: LobbyStatus.initial()));

  void add(QueueingUser author) {
    emit(state.copyWith(
        lobby: [...state.lobby, author], status: const LobbyStatus.added()));
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
    print("alreadyChosen ${alreadyChosen.length} left: ${userLeft.length}");

    if (userLeft.length > choice - alreadyChosen.length) {
      Random random = Random();
      List<QueueingUser> randomUsers = [];

      for (var i = 0; i < choice - alreadyChosen.length ; i++) {
        int counter = 0;
        QueueingUser randomUser;
        do {
          randomUser = userLeft.elementAt(random.nextInt(userLeft.length));
          print("Random ${randomUser.name}");
          counter++;
          if (counter > 50) {
            break;
          }
        } while (randomUsers.contains(randomUser));

        print("Chose $randomUser");
        randomUsers.add(randomUser);
      }

      print("Choosen list $randomUsers");

      var copy = state.lobby.toList();
      for (var i = 0; i < randomUsers.length; i++) {
        final int index = copy.indexWhere(
            (element) => element.name == randomUsers.elementAt(i).name);
        copy.removeAt(index);
        copy.insert(index, randomUsers.elementAt(i).copyWith(true));
      }
      emit(state.copyWith(lobby: copy));
    } else {
      print("Not so many player :(");
    }
  }
}
