import 'package:eleven_labs/eleven_labs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_cubit.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/custom_voice_cubit.dart';
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
                Flexible(
                  child: CustomTable(
                    columnNames: const [
                      "Voice ID",
                      "Name",
                      "Voice Settings",
                      ""
                    ],
                    rowValues: state.voices
                        .map((customVoice) => [
                              Text(customVoice.voiceId ?? ""),
                              Text(customVoice.name ?? ""),
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
                Divider(),
                const Flexible(child: VoiceFormEdit()),
              ],
            );
          }
        },
      ),
    );
  }
}
