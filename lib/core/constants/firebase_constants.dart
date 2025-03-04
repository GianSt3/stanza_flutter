class FirebaseConstants {
  static final collection = _Collection();
  static final doc = _Doc();
}

class _Collection {
  final String minigame = '_minigame';
  final String poll = 'polls';
  final String pollVotes = '_minigame_poll_votes';
  final String pressedTimesCollection = '_minigame_pressed_times';
}

class _Doc {
  final String poll = 'poll';
  final String perform = 'perform';
  final String pressed = 'pressed';
}
