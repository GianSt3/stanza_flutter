import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../features/lobby/bloc/lobby_cubit.dart';

class IconButtonRandomLobbyWidget extends StatelessWidget {
  const IconButtonRandomLobbyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<LobbyCubit>().random(),
      icon: const Icon(
        FontAwesomeIcons.shuffle,
        size: 18,
      ),
    );
  }
}
