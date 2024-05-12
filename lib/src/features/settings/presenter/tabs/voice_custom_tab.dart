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
            return Column(
              children: [
                VoiceFormEdit(),
                TextButton(onPressed: () {}, child: Text("Add voice")),
              ],
            );
          } else {
            return Column(
              children: [
                Flexible(
                  child: ListView.separated(
                      itemBuilder: (context, index) => Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              runSpacing: 20,
                              spacing: 20,
                              children: [
                                Text(state.voices.elementAt(index).voiceId!),
                                Text(state.voices.elementAt(index).name!),
                                Text(state.voices.elementAt(index).voiceSettings?.toString() ?? ""),
                              ],
                            ),
                          )),
                      separatorBuilder: (context, index) => Divider(height: 1, color: Theme.of(context).cardColor,),
                      itemCount: state.voices.length),
                ),
                Expanded(child: VoiceFormEdit()),
              ],
            );
          }
        },
      ),
    );
  }
}
