import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/voice/custom_voice_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/widget/voice_form_edit.dart';
import 'package:stanza_scrapper/src/widget/custom_table.dart';

class VoiceCustomTab extends StatefulWidget {
  const VoiceCustomTab({super.key});

  @override
  State<VoiceCustomTab> createState() => _VoiceCustomTabState();
}

class _VoiceCustomTabState extends State<VoiceCustomTab> {
  TextEditingController textSampleController = TextEditingController();
  TextEditingController textStyleController = TextEditingController();

  @override
  void dispose() {
    textSampleController.dispose();
    textStyleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<CustomVoiceCubit, CustomVoiceState>(
        builder: (context, state) {
          if (state.voices.isEmpty) {
            return const Column(
              children: [
                Text("No custom voices..."),
                Flexible(child: VoiceFormEdit()),
              ],
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    "Elenco voci salvate",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Flexible(
                  child: CustomTable(
                    columnNames: const [
                      "Voice ID",
                      "Original Voice Name",
                      "Name",
                      "Model",
                      "Voice Settings",
                      ""
                    ],
                    rowValues: state.voices
                        .map((customVoice) => [
                              Text(customVoice.voiceId ?? ""),
                              Text(customVoice.originalName ?? ""),
                              Text(customVoice.name ?? ""),
                              Text(customVoice.modelId?.value ?? ""),
                              Text(customVoice.voiceSettings?.toString() ?? ""),
                              IconButton(
                                  onPressed: () => context
                                      .read<CustomVoiceCubit>()
                                      .delete(customVoice),
                                  icon: Icon(
                                    Icons.delete,
                                    size: 18,
                                    color: Colors.red[800],
                                  ))
                            ].toList())
                        .toList(),
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    "Creazione nuova custom voice",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                const Flexible(child: VoiceFormEdit()),
              ],
            );
          }
        },
      ),
    );
  }
}
