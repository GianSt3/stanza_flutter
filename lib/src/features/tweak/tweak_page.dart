import 'package:eleven_labs/elevenlabs_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_cubit.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';

class TweakPage extends StatefulWidget {
  const TweakPage({super.key});

  @override
  State<TweakPage> createState() => _TweakPageState();
}

class _TweakPageState extends State<TweakPage> {
  Voice? voice;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BlocBuilder<ElevenLabsVoiceCubit, ElevenLabsVoiceState>(
                builder: (context, state) {
              return DropdownMenu(
                  onSelected: (voice) => setState(() {
                        this.voice = voice;
                      }),
                  dropdownMenuEntries: state.voices
                      .map((e) => DropdownMenuEntry<Voice>(
                          value: e, label: e.name ?? ""))
                      .toList());
            }),
            SizedBox(
              width: 700,
              child: TextField(
                onSubmitted: (text) => voice != null
                    ? context
                        .read<ElevenLabsCubit>()
                        .speak(voiceId: voice!.voiceId!, text: text)
                    : null,
              ),
            )
          ],
        ),
      ],
    );
  }
}
