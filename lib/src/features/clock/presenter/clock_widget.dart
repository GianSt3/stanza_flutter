import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:stanza_scrapper/app/gen/assets.gen.dart';
import 'package:stanza_scrapper/src/features/clock/bloc/clock_cubit.dart';

class ClockWidget extends StatelessWidget {
  static final NumberFormat formatter = NumberFormat('00');

  const ClockWidget({
    super.key,
    this.dateTime,
    this.millis,
  }) : assert(
          (dateTime != null && millis == null) ||
              (dateTime == null && millis != null),
        );

  final DateTime? dateTime;
  final int? millis;

  Color timeColor(int seconds) {
    if (seconds > 300) return Colors.black;
    if (seconds > 120) return Colors.red.shade800;
    if (seconds > 60) return Colors.orange.shade800;
    if (seconds > 30) return Colors.yellow.shade800;
    return Colors.green.shade800;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClockCubit, ClockState>(builder: (context, state) {
      final snapshot = state.maybeWhen(
        now: (now) => now.difference(
          dateTime != null
              ? dateTime!
              : DateTime.fromMillisecondsSinceEpoch(
                  millis ?? 0,
                ),
        ),
        orElse: () => Duration.zero,
      );

      final int seconds = snapshot.inSeconds;
      final int minutes = snapshot.inMinutes;
      final color = timeColor(seconds);

      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${formatter.format(minutes)}:${ClockWidget.formatter.format(seconds)}",
            style: GoogleFonts.notoSans(
              textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: color,
                  ),
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          Assets.icons.watch.svg(
            width: 14,
            theme: SvgTheme(
              currentColor: color,
            ),
          ),
        ],
      );
    });
  }
}
