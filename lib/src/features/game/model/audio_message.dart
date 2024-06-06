import 'package:audioplayers/audioplayers.dart';
import 'package:equatable/equatable.dart';
import 'package:stanza_scrapper/bloc/model/message.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';

class AudioMessage extends Equatable {
  final Player player;
  final Message message;
  final BytesSource? source;
  final DateTime created;

  const AudioMessage({
    required this.player,
    required this.message,
    required this.created,
    this.source,
  });

  factory AudioMessage.now(
      {required Player player, required Message message, BytesSource? source}) {
    return AudioMessage(
        player: player,
        message: message,
        created: DateTime.now(),
        source: source);
  }

  AudioMessage copyWith({required BytesSource source}) {
    return AudioMessage(
        player: player, message: message, created: created, source: source);
  }

  @override
  List<Object?> get props => [message, source];

  @override
  String toString() =>
      "AudioMessage(audio:[${source != null}] - ${message.author}:${message.text}, )";
}
