import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/game/bloc/game_cubit.dart';

class IconButtonGameSoundWidget extends StatelessWidget {
  const IconButtonGameSoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, gameState) => gameState.status.maybeMap(
          start: (_) => IconButton(
              onPressed: () => context.read<GameCubit>().stop(),
              icon: const Icon(
                Icons.volume_up_outlined,
                color: Colors.lightGreen,
              )),
          orElse: () => IconButton(
              onPressed: () => context.read<GameCubit>().start(),
              icon: const Icon(
                Icons.volume_off_outlined,
                color: Colors.blueGrey,
              ))),
    );
  }
}
