import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/youtube_message.dart';
import '../../domain/entities/custom_voice.dart';
import '../features/game/bloc/game_cubit.dart';
import '../features/game/bloc/messages/game_messages_cubit.dart';
import '../features/game/model/player.dart';

class MockButtonWidget extends StatelessWidget {
  const MockButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        const players = ['Anton De la rois', 'Giuseppy', 'Arnaldo'];

        /// Add players
        context
            .read<GameCubit>()
            .player(Player(name: players[0], voice: CustomVoice()));
        context
            .read<GameCubit>()
            .player(Player(name: players[1], voice: CustomVoice()));
        context
            .read<GameCubit>()
            .player(Player(name: players[2], voice: CustomVoice()));

        final now = DateTime.now();

        final messages = [
          'The quick brown fox jumps over the lazy dog.',
          '/me The quick brown fox jumps over the lazy dog.',
          '/1d20',
          'Innovation distinguishes between a leader and a follower. Stay creative and lead.',
          'Success usually comes to those who are too busy to be looking for it. Keep pushing forward without looking back.',
          'In the middle of difficulty lies opportunity. Embrace challenges as stepping stones to growth and achievement. Your perseverance will lead you to new heights.',
          'Happiness is not something ready-made. It comes from your own actions. Cultivate positivity, act with kindness, and spread joy. Your efforts will create a ripple effect of happiness around you.',
          "Life is a series of natural and spontaneous changes. Don't resist them; that only creates sorrow. Let reality be reality. Let things flow naturally forward in whatever way they like. Embrace change and grow with each new experience, for it leads to personal growth and wisdom."
        ];

        /// Add messages
        context.read<GameMessagesCubit>().pushAll(
            [
              YoutubeMessage(
                  id: 'ABC',
                  author: players[0],
                  avatarUrl: '',
                  timestamp: '',
                  created: now.millisecondsSinceEpoch,
                  text: messages[Random().nextInt(messages.length)]),
              YoutubeMessage(
                  id: 'DEF',
                  author: players[1],
                  avatarUrl: '',
                  timestamp: '',
                  created: now.millisecondsSinceEpoch,
                  text: messages[Random().nextInt(messages.length)]),
              YoutubeMessage(
                  id: 'GHI',
                  author: players[2],
                  avatarUrl: '',
                  timestamp: '',
                  created: now.millisecondsSinceEpoch,
                  text: messages[Random().nextInt(messages.length)])
            ],
            [
              Player(name: players[0], voice: CustomVoice()),
              Player(name: players[1], voice: CustomVoice()),
              Player(name: players[2], voice: CustomVoice())
            ],
            context
                .read<GameCubit>()
                .state
                .status
                .maybeMap(mute: (_) => false, orElse: () => true));
      },
      child: const Text('Load mocked messages'),
    );
  }
}
