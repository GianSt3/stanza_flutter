import 'package:eleven_labs/eleven_labs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_cubit.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';
import 'package:stanza_scrapper/src/features/dnd/bloc/game/dnd_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/custom_voice_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/widget/custom_slider.dart';

class VoiceFormEdit extends StatefulWidget {
  const VoiceFormEdit({super.key});

  @override
  State<VoiceFormEdit> createState() => _VoiceFormEditState();
}

class _VoiceFormEditState extends State<VoiceFormEdit> {
  TextEditingController textSampleController = TextEditingController(
      text: "Questo è un esempio di testo da far leggere alla IA. Ciaooo! ");

  TextEditingController textCustomVoiceNameController = TextEditingController();
  double styleValue = 0.5;
  double similarityValue = 0.2;
  double stabilityValue = 0.75;
  VoiceSettings? voiceSettings;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    textCustomVoiceNameController.dispose();
    textSampleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomVoiceCubit, CustomVoiceState>(
      listener: (context, state) => state.status.whenOrNull(selected: (voice) {
        print("selected ${voice.toString()}");
        setState(() {
          styleValue = voice.settings?.style?.toDouble() ?? 0.5;
        });
      }),
      builder: (context, customVoiceState) {
        return Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Dropdown voices
                          BlocBuilder<ElevenLabsVoiceCubit,
                                  ElevenLabsVoiceState>(
                              builder: (context, voicesState) {
                            return customVoiceState.status.maybeWhen(
                                selected: (voice) => Text(voice.name ?? ""),
                                orElse: () => DropdownMenu(
                                    onSelected: (voice) => context
                                        .read<CustomVoiceCubit>()
                                        .selected(voice!),
                                    dropdownMenuEntries: voicesState.voices
                                        .map((e) => DropdownMenuEntry<Voice>(
                                            value: e, label: e.name ?? ""))
                                        .toList()));
                          }),
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextFormField(
                                controller: textSampleController,
                                validator: (text) => text == null
                                    ? "Please insert a text"
                                    : null,
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  labelText: "Text to read",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.blueGrey.shade50,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            CustomSlider(
                                title: "Style (${styleValue.toStringAsFixed(2)})",
                                value: styleValue,
                                onChanged: (value) {
                                  setState(() {
                                    styleValue = value;
                                  });
                                }),
                            CustomSlider(
                                title: "Similarity (${similarityValue.toStringAsFixed(2)})",
                                value: similarityValue,
                                onChanged: (value) {
                                  setState(() {
                                    similarityValue = value;
                                  });
                                }),
                            CustomSlider(
                                title: "Stability (${stabilityValue.toStringAsFixed(2)})",
                                value: stabilityValue,
                                onChanged: (value) {
                                  setState(() {
                                    stabilityValue = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 28,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BlocBuilder<CustomVoiceCubit, CustomVoiceState>(
                      builder: (context, state) {
                        return TextButton(
                            onPressed: () =>
                                state.status.mapOrNull(selected: (voice) {
                                  if (!_formKey.currentState!.validate()) {
                                    return null;
                                  }
                                  voiceSettings = VoiceSettings(
                                      similarityBoost: similarityValue,
                                      stability: stabilityValue,
                                      style: styleValue);
                                  context.read<ElevenLabsCubit>().speak(
                                      voiceId: customVoiceState.status
                                          .maybeWhen(
                                              selected: (voice) =>
                                                  voice.voiceId!,
                                              customize: (voice) =>
                                                  voice.voiceId!,
                                              orElse: () => ""),
                                      text: textSampleController.text,
                                      voiceSettings: voiceSettings);
                                }),
                            child:
                                BlocBuilder<ElevenLabsCubit, ElevenLabsState>(
                              builder: (context, elevenState) {
                                return Text(elevenState.status.maybeWhen(
                                    loading: () => "Loading...",
                                    orElse: () => "Try this setting"));
                              },
                            ));
                      },
                    ),
                    BlocBuilder<CustomVoiceCubit, CustomVoiceState>(
                      builder: (context, state) {
                        return TextButton(
                            onPressed: () async {
                              final String? name = await showDialog<String>(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text("Choose a voice name"),
                                        content: TextField(
                                          controller:
                                              textCustomVoiceNameController,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                              hintText: "Custom voice name"),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop(null);
                                              },
                                              child: Text("Cancel")),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop(
                                                    textCustomVoiceNameController
                                                        .text);
                                              },
                                              child: Text("Save"))
                                        ],
                                      ));
                              if (name != null && name.isNotEmpty) {
                                state.status.whenOrNull(
                                    selected: (voice) => context
                                        .read<CustomVoiceCubit>()
                                        .save(
                                            voiceId: voice.voiceId!,
                                            settings: voiceSettings,
                                            voiceName: name));
                                textCustomVoiceNameController.text = "";
                              }
                            },
                            child: const Text("Save"));
                      },
                    ),
                    TextButton(
                        onPressed: context.read<CustomVoiceCubit>().reset,
                        child: const Text("Cancel"))
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
