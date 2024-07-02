import 'package:flutter/material.dart';

class RatioWidget extends StatelessWidget {
  const RatioWidget({super.key, required this.child});

  final Widget Function(double ratio) child;

  @override
  Widget build(BuildContext context) {
    final ratio =
        MediaQuery.sizeOf(context).width / MediaQuery.sizeOf(context).height;

    return child(ratio);
  }
}
