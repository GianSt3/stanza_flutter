import 'package:eleven_labs/eleven_labs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_cubit.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/bloc/custom_voice_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/model/custom_voice.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/widget/custom_slider.dart';

class VoiceFormEdit extends StatefulWidget {
  const VoiceFormEdit({super.key});

  @override
  State<VoiceFormEdit> createState() => _VoiceFormEditState();
}

class _VoiceFormEditState extends State<VoiceFormEdit> {
  TextEditingController textSampleController = TextEditingController(
      text: "Questo è un esempio di testo da far leggere alla IA! ");

  TextEditingController textCustomVoiceNameController = TextEditingController();
  double styleValue = 0.5;
  double similarityValue = 0.2;
  double stabilityValue = 0.75;
  ModelId modelId = ModelId.v2;
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
                            return DropdownMenu(
                                label: const Text("Voice"),
                                onSelected: (voice) => context
                                    .read<CustomVoiceCubit>()
                                    .selected(voice!),
                                dropdownMenuEntries: voicesState.voices
                                    .map((e) => DropdownMenuEntry<Voice>(
                                        value: e, label: e.name ?? ""))
                                    .toList());
                          }),
                          const SizedBox(
                            width: 32,
                          ),
                          DropdownMenu(
                              label: const Text("Voice Model"),
                              onSelected: (model) {
                                setState(() {
                                  if (model != null) {
                                    modelId = model;
                                  }
                                });
                              },
                              dropdownMenuEntries: ModelId.values
                                  .map((e) => DropdownMenuEntry<ModelId>(
                                      value: e, label: e.name ?? ""))
                                  .toList()),
                          const SizedBox(
                            width: 32,
                          ),
                          Flexible(
                            child: TextFormField(
                              controller: textSampleController,
                              validator: (text) =>
                                  text == null ? "Please insert a text" : null,
                              maxLines: 1,
                              decoration: const InputDecoration(
                                labelText: "Text to read",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            CustomSlider(
                                title:
                                    "Style (${styleValue.toStringAsFixed(2)})",
                                value: styleValue,
                                onChanged: (value) {
                                  setState(() {
                                    styleValue = value;
                                  });
                                }),
                            CustomSlider(
                                title:
                                    "Similarity (${similarityValue.toStringAsFixed(2)})",
                                value: similarityValue,
                                onChanged: (value) {
                                  setState(() {
                                    similarityValue = value;
                                  });
                                }),
                            CustomSlider(
                                title:
                                    "Stability (${stabilityValue.toStringAsFixed(2)})",
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
                const SizedBox(
                  width: 28,
                ),
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
                                      modelId: modelId.value,
                                      voiceSettings: voiceSettings);
                                }),
                            child:
                                BlocBuilder<ElevenLabsCubit, ElevenLabsState>(
                              builder: (context, elevenState) {
                                return Text(elevenState.status.maybeWhen(
                                    loading: () => "Loading...",
                                    error: (err) => "Error! $err\nTry again",
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
                                        title:
                                            const Text("Choose a voice name"),
                                        content: TextField(
                                          controller:
                                              textCustomVoiceNameController,
                                          autofocus: true,
                                          decoration: const InputDecoration(
                                              hintText: "Custom voice name"),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop(null);
                                              },
                                              child: const Text("Cancel")),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop(
                                                    textCustomVoiceNameController
                                                        .text);
                                              },
                                              child: const Text("Save"))
                                        ],
                                      ));
                              if (name != null && name.isNotEmpty) {
                                state.status.whenOrNull(
                                    selected: (voice) => context
                                        .read<CustomVoiceCubit>()
                                        .save(
                                            voiceId: voice.voiceId!,
                                            modelId: modelId,
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
