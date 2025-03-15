class ProfanityFirebase {
  final List<ProfanityWord> words;

  ProfanityFirebase({required this.words});

  factory ProfanityFirebase.fromJson(Map<String, dynamic> json) {
    return ProfanityFirebase(
      words: (json['words'] as List<dynamic>)
          .map((e) => ProfanityWord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'words': words.map((e) => e.toJson()).toList(),
    };
  }

  ProfanityFirebase copyWith({List<ProfanityWord>? words}) {
    return ProfanityFirebase(
      words: words ?? this.words,
    );
  }
}

class ProfanityWord {
  final String word;
  final String replace;

  ProfanityWord({required this.word, required this.replace});

  factory ProfanityWord.fromJson(Map<String, dynamic> json) {
    return ProfanityWord(
      word: json['word'] as String,
      replace: json['replace'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'word': word,
      'replace': replace,
    };
  }
}
