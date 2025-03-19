import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../widget/stroke_text_widget.dart';
import '../../../model/pressed_firebase.dart';

class PressedContent extends StatelessWidget {
  final List<PressedFromFirebase> pressed;

  const PressedContent({super.key, required this.pressed});

  @override
  Widget build(BuildContext context) {
    final int totalPresses = pressed.isEmpty
        ? 0
        : pressed
            .map((p) => p.times)
            .reduce((value, element) => value + element);

    final c = _getCheers();

    final cheer = pressed.isNotEmpty ? '$c ${pressed.last.nickname}' : '';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double proportion = totalPresses / 100;
              double containerWidth = constraints.maxWidth * proportion;
              double containerHeight = 100;
              const double minWidth = 50;

              if (containerWidth > constraints.maxWidth) {
                containerHeight +=
                    ((containerWidth - constraints.maxWidth) / 10);

                containerWidth = constraints.maxWidth;
              }

              if (containerHeight > constraints.maxHeight) {
                containerHeight = constraints.maxHeight;
              }
              containerWidth =
                  containerWidth < minWidth ? minWidth : containerWidth;

              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.elasticOut,
                width: containerWidth,
                height: containerHeight,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  border: Border.all(color: Colors.yellow, width: 5),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  switchInCurve: Curves.easeInOut,
                  child: StrokeTextWidget(
                    text: '$totalPresses',
                    key: ValueKey(totalPresses),
                  ),
                ),
              );
            },
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          switchInCurve: Curves.easeInOut,
          switchOutCurve: Curves.easeInOut,
          child: StrokeTextWidget(
            key: ValueKey(cheer),
            text: pressed.isNotEmpty ? cheer : '',
          ),
        ),
      ],
    );
  }

  String _getCheers() {
    final cheers = [
      'Continua cosí',
      'Daje',
      'Forza',
      'Dai Dai Dai',
      'Dita on Fire'
    ];
    return cheers[Random().nextInt(cheers.length)];
  }
}
