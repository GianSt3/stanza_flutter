import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:stanza_scrapper/gen/assets.gen.dart';
import 'package:stanza_scrapper/src/features/clock/bloc/clock_cubit.dart';

class ClockWidget extends StatelessWidget {
  static NumberFormat formatter = NumberFormat('00');

  const ClockWidget({super.key, this.dateTime, this.millis})
      : assert((dateTime != null && millis == null) ||
            (dateTime == null && millis != null));

  final DateTime? dateTime;
  final int? millis;

  Color timeColor(Duration snapshot) => snapshot.inSeconds > 300
      ? Colors.black
      : snapshot.inSeconds > 120
          ? Colors.red.shade800
          : snapshot.inSeconds > 60
              ? Colors.orange.shade800
              : snapshot.inSeconds > 30
                  ? Colors.yellow.shade800
                  : Colors.green.shade800;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClockCubit, ClockState>(builder: (context, state) {
      final snapshot = state.maybeWhen(
          now: (now) => now.difference(dateTime != null
              ? dateTime!
              : DateTime.fromMillisecondsSinceEpoch(millis ?? 0)),
          orElse: () => Duration.zero);

      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${ClockWidget.formatter.format(snapshot.inMinutes)}:${ClockWidget.formatter.format(snapshot.inSeconds)}",
            style: GoogleFonts.notoSans(
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: timeColor(snapshot),
                    )),
          ),
          const SizedBox(
            width: 2,
          ),
          Assets.icons.watch.svg(
              width: 14, theme: SvgTheme(currentColor: timeColor(snapshot)))
        ],
      );
    });
  }
}
