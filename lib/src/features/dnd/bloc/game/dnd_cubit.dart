import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/bloc/model/message.dart';
import 'package:stanza_scrapper/bloc/scrapper/youtube_scrapper_cubit.dart';

part 'dnd_state.dart';

part 'dnd_cubit.freezed.dart';

class DndCubit extends Cubit<DndState> {
  DndCubit() : super(const DndState(status: DndStatus.initial()));

  void choose({required int id, required Author author}) {
    final player = Player(id: id, name: author.name, image: author.avatarUrl);

    var copy = state.players.toList();

    if (copy.where((p) => p.id == id).firstOrNull != null) {
      copy.removeAt(id);
      copy.add(player);
    } else {
      copy.add(player);
    }

    emit(state.copyWith(status: DndStatus.chosen(player), players: copy));
  }

  void messages(List<Message> messages) {
    final playerMessages = messages
        .where((message) =>
            state.players.map((p) => p.name).contains(message.author))
        .toList();

    emit(state.copyWith(
        status: const DndStatus.listen(), playersMessages: playerMessages));
  }

  void start() {
    emit(state.copyWith(status: const DndStatus.start()));
  }

  void stop() {
    emit(state.copyWith(status: const DndStatus.stop()));
  }
}
