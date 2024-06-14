import 'package:eleven_labs/eleven_labs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';
import 'package:stanza_scrapper/src/widget/custom_table.dart';

class VoicesTabPage extends StatelessWidget {
  const VoicesTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ElevenLabsVoiceCubit, ElevenLabsVoiceState>(
      builder: (context, state) {
        return Column(
          children: [
            TextButton.icon(
              onPressed: state.status.maybeMap(
                  orElse: () => context.read<ElevenLabsVoiceCubit>().load),
              icon: state.status.maybeWhen(
                  loaded: () => const Icon(Icons.update),
                  orElse: () => const Icon(Icons.download)),
              label: state.status.maybeWhen(
                  loaded: () => const Text("Reload Voices"),
                  orElse: () => const Text("Load Voices")),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: CustomTable(
                  columnNames: const [
                    "Voice ID",
                    "Name",
                    "Gender",
                    "Language",
                    "Accent",
                    "Age",
                    "Description",
                    "Use case"
                  ],
                  rowValues: state.voices
                      .map((voice) => [
                            Text(voice.voiceId ?? ""),
                            Text(voice.name ?? ""),
                            Text(voice.labels?.gender ?? ""),
                            Text(voice.fineTuning?.language ?? ""),
                            Text(voice.labels?.accent ?? ""),
                            Text(voice.labels?.age ?? ""),
                            Text(voice.labels?.description ?? ""),
                            Text(voice.labels?.useCase ?? ""),
                          ].toList())
                      .toList()),
            )),
          ],
        );
      },
    );
  }
}
