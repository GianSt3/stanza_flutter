import 'package:eleven_labs/eleven_labs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';

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
