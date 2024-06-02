import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stanza_scrapper/src/features/audio_player/model/audio_model.dart';

part 'audio_player_state.dart';

part 'audio_player_cubit.freezed.dart';

class AudioPlayerCubit extends Cubit<AudioPlayerState> {
  AudioPlayerCubit()
      : super(const AudioPlayerState(status: AudioPlayerStatus.stop()));

  void play(
      {required String authorName,
      required String text,
      required BytesSource audioSource}) {
    var temp = state.playlist.toList();
    temp.insert(
        0,
        AudioModel(
            authorName: authorName, text: text, audioSource: audioSource));
  }
}
