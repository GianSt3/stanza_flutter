import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final String title;
  final double value;
  final Function(double value) onChanged;

  const CustomSlider(
      {super.key,
      required this.title,
      required this.value,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Slider(
          label: value.toStringAsFixed(2),
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
