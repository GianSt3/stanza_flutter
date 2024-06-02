import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:stanza_scrapper/utils/logger.dart';

class AudioController extends StatefulWidget {
  const AudioController({required this.onAudioComplete, super.key});

  final VoidCallback onAudioComplete;

  @override
  State<AudioController> createState() => _AudioControllerState();
}

class _AudioControllerState extends State<AudioController> {
  final audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    audioPlayer.setReleaseMode(ReleaseMode.release);
    audioPlayer.onPlayerComplete.listen((event) {
      logger.w("Audio completed.");
      widget.onAudioComplete();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
