import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';

class TweakPage extends StatefulWidget {
  const TweakPage({super.key});

  @override
  State<TweakPage> createState() => _TweakPageState();
}

class _TweakPageState extends State<TweakPage> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<ElevenLabsVoiceCubit, ElevenLabsVoiceState>(
            builder: (context, state) {
          return DropdownMenu(
            controller: controller,
              dropdownMenuEntries: state.voices
                  .map((e) => DropdownMenuEntry(value: e, label: e.name ?? ""))
                  .toList());
        })
      ],
    );
  }
}
