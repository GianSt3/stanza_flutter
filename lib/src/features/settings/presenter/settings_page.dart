import 'package:elevenlabs_flutter/elevenlabs_types.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ElevenLabsVoiceCubit, ElevenLabsVoiceState>(
      builder: (context, state) {
        return Column(
          children: [
            Text("Settings"),
            TextButton(
                onPressed: state.status.maybeMap(
                    orElse: () => context.read<ElevenLabsVoiceCubit>().load),
                child: Text("Load voices")),
            Expanded(
              child: SingleChildScrollView(
                child: DataTable(
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Voice ID',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Name',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Gender',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'language',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Accent',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Age',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Description',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Use Case',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                    rows: state.voices
                        .map((voice) => DataRow(cells: [
                              DataCell(Text(voice.voiceId ?? "")),
                              DataCell(Text(voice.name ?? "")),
                              DataCell(Text(voice.labels?.gender ?? "")),
                              DataCell(Text(voice.fineTuning?.language ?? "")),
                              DataCell(Text(voice.labels?.accent ?? "")),
                              DataCell(Text(voice.labels?.age ?? "")),
                              DataCell(Text(voice.labels?.description ?? "")),
                              DataCell(Text(voice.labels?.useCase ?? "")),
                            ]))
                        .toList()),
              ),
            )
          ],
        );
      },
    );
  }
}

class VoiceWidget extends StatelessWidget {
  final Voice voice;

  const VoiceWidget({super.key, required this.voice});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 50,
      children: [
        Text(voice.category ?? "Empty Category"),
        Text(voice.voiceId ?? ""),
        Text(voice.name ?? "Empty Name"),
        Text(voice.labels?.age ?? "Empty age"),
        Text(voice.labels?.accent ?? "Empty accent"),
        Text(voice.fineTuning?.language ?? "x"),
        Text(voice.labels?.description ?? ""),
        Text(voice.labels?.gender ?? "Empty gender")
      ],
    );
  }
}
