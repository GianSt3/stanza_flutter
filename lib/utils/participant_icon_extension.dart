import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

extension ParticipantIconExtension on String {
  Icon getIcon({double size = 20}) {
    switch (this) {
      case 'owner':
        return Icon(
          FontAwesomeIcons.userAstronaut,
          size: size,
        );
      case 'moderator':
        return Icon(
          Icons.local_police_rounded,
          size: size,
          color: Colors.blueGrey,
        );
      case 'member':
        return Icon(
          FontAwesomeIcons.certificate,
          size: size,
          color: Colors.blue,
        );
      default:
        return Icon(
          FontAwesomeIcons.circleUser,
          size: size,
        );
    }
  }
}
