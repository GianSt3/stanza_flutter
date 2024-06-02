import 'package:audioplayers/audioplayers.dart';
import 'package:equatable/equatable.dart';

class AudioModel extends Equatable {
  final String authorName;
  final String text;
  final BytesSource audioSource;

  const AudioModel(
      {required this.authorName,
      required this.text,
      required this.audioSource});

  @override
  List<Object?> get props => [authorName, text];
}
