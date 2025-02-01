import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../../app/gen/assets.gen.dart';
import '../bloc/clock_cubit.dart';

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

  Color timeColor(Duration duration) {
    int seconds = duration.inSeconds;

    if (seconds > 300) return Colors.black;
    if (seconds > 120) return Colors.red.shade800;
    if (seconds > 60) return Colors.orange.shade800;
    if (seconds > 30) return Colors.yellow.shade800;
    return Colors.green.shade800;
  }

  String formatDuration(Duration duration) {
    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;

    if (days > 0) {
      return "$days day${days > 1 ? 's' : ''}, ${formatter.format(hours)}:${formatter.format(minutes)}:${formatter.format(seconds)}";
    } else if (hours > 0) {
      return '${formatter.format(hours)}:${formatter.format(minutes)}:${formatter.format(seconds)}';
    } else {
      return '${formatter.format(minutes)}:${formatter.format(seconds)}';
    }
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

      final color = timeColor(snapshot);

      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            formatDuration(snapshot),
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
