import 'package:audioplayers/audioplayers.dart';
import 'package:equatable/equatable.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';

enum AudioType { textToSpeech, dice, me, silence }

class AudioMessage extends Equatable {
  final Player player;
  final YoutubeMessage message;
  final BytesSource? source;
  final DateTime created;
  final AudioType? audioType;

  const AudioMessage(
      {required this.player,
      required this.message,
      required this.created,
      this.source,
      this.audioType = AudioType.textToSpeech});

  factory AudioMessage.now(
      {required Player player,
      required YoutubeMessage message,
      BytesSource? source,
      AudioType? audioType}) {
    return AudioMessage(
        player: player,
        message: message,
        created: DateTime.now(),
        audioType: audioType,
        source: source);
  }

  AudioMessage copyWith(
      {required BytesSource source,
      YoutubeMessage? message,
      AudioType? audioType}) {
    return AudioMessage(
        player: player,
        message: message ?? this.message,
        audioType: audioType ?? this.audioType,
        created: created,
        source: source);
  }

  @override
  List<Object?> get props => [message, source];

  @override
  String toString() =>
      "AudioMessage(audio:[${source != null}] $created - ${message.author}:${message.text}, )";
}
