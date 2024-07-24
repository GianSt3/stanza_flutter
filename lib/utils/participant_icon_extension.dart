import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stanza_scrapper/gen/assets.gen.dart';

extension ParticipantIconExtension on String {
  Widget getIcon({double size = 20}) {
    switch (this) {
      case 'owner':
        return Icon(
          FontAwesomeIcons.userTie,
          size: size,
        );
      case 'moderator':
        return Icon(
          FontAwesomeIcons.userShield,
          size: size,
          color: Colors.blueGrey.shade600,
        );
      case 'member':
        return Icon(
          FontAwesomeIcons.user,
          size: size,
          color: Colors.blue.shade700,
        );
      default:
        return Icon(
          FontAwesomeIcons.circleUser,
          size: size,
          color: Colors.grey,
        );
        return Assets.icons.userCircle
            .svg(width: size, theme: const SvgTheme(currentColor: Colors.grey));
    }
  }
}
