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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double proportion = totalPresses / 120;
              double containerWidth = constraints.maxWidth * proportion;
              double containerHeight = 100;

              if (containerWidth > constraints.maxWidth) {
                containerWidth = constraints.maxWidth;
                containerHeight += (containerWidth - constraints.maxWidth);
              }

              return AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                child: Container(
                  key: ValueKey(totalPresses),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    border: Border.all(color: Colors.yellow, width: 5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  width: containerWidth,
                  height: containerHeight,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    child: StrokeTextWidget(
                      text: '$totalPresses',
                      key: ValueKey(totalPresses),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        StrokeTextWidget(
          text: pressed.isNotEmpty
              ? 'Continua cosi ${pressed.last.nickname}'
              : '',
        ),
      ],
    );
  }
}
