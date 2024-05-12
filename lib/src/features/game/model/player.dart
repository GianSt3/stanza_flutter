import 'package:equatable/equatable.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/custom_voice_cubit.dart';

class Player extends Equatable {
  final int number;
  final String name;
  final String? image;
  final CustomVoice voice;

  const Player(
      {required this.number,
      required this.name,
      required this.voice,
      this.image});

  @override
  List<Object?> get props => [name, voice];
}
