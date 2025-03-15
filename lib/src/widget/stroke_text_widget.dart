import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart' as stroke_text;

import '../../app/gen/fonts.gen.dart';

class StrokeTextWidget extends StatelessWidget {
  /// The text to display
  final String text;

  /// The width of the stroke
  final double strokeWidth;

  final double? fontSize;

  /// The style of the text
  final TextStyle? Function(TextTheme textTheme)? textStyle;

  /// The color of the text
  final Color textColor;

  /// The alignment of the text
  final TextAlign textAlign;

  const StrokeTextWidget({
    super.key,
    required this.text,
    this.strokeWidth = 2,
    this.textStyle,
    this.fontSize,
    this.textColor = Colors.white,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return stroke_text.StrokeText(
      text: text,
      textAlign: textAlign,
      strokeWidth: strokeWidth,
      strokeColor: Colors.black,
      textStyle: textStyle != null
          ? textStyle!(Theme.of(context).textTheme)?.copyWith(
              color: textColor,
              fontSize: fontSize,
            )
          : Theme.of(context).textTheme.displayLarge?.copyWith(
              color: textColor,
              fontFamily: FontFamily.draconis,
              fontSize: fontSize),
    );
  }
}
