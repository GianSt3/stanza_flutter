import 'package:either_dart/either.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';

class SwearWordFilterUseCase extends UseCase<Either<String, String>, String> {
  static const Map<String, String> replacements = {
    "dio": "eccelso",
    "madonna": "genoveffa",
    "gesù": "",
    "cazzo": "azz",
    "merda": "[censored]",
    "stronzo": "[censored]",
    "bastardo": "[censored]",
    "vaffanculo": "vattene via",
    "porca puttana": "[censored]",
    "troia": "simpatica",
    "puttana": "simpatica",
    "fanculo": "bah",
    "cretino": "sciocchino",
    "deficiente": "[censored]",
    "figlio di puttana": "[censored]",
    "cornuto": "[censored]",
    "che palle": "che scatole",
    "che due palle": "che due scatole",
    "testa di cazzo": "antipatico",
    "porco dio": "mannaggia",
    "minchia": "caspita",
    "coglione": "sciocco",
    "rompicoglioni": "rompiscatole",
    "stupido": "sciocchino",
    "maledetto": "[censored]"
  };
  static const triggerWords = ["dio", "madonna", "gesù"];
  late final RegExp regex;

  SwearWordFilterUseCase() {
    final swearWords = replacements.keys.join("|");

    regex = RegExp(r'\b(' +
        triggerWords.join("|") +
        r')\b\s+(' +
        swearWords +
        r')\b' +
        r'|' +
        r'\b(' +
        swearWords +
        r')\b\s+(' +
        triggerWords.join("|") +
        r')\b' +
        r'|' +
        r'\b(' +
        swearWords +
        r')\b');
  }

  @override
  Either<String, String> call({required String params}) {
    final stopwatch = Stopwatch()..start();
    if (regex.hasMatch(params)) {
      String censored = params.replaceAllMapped(regex, (match) {
        for (int i = 0; i < match.groupCount; i++) {
          final word = match.group(i + 1)?.toLowerCase();
          if (word != null && replacements.containsKey(word)) {
            return replacements[word]!; // Replace with mapped text
          }
        }
        return match[0]!; // If no replacement found, return the original match
      });
      stopwatch.stop();
      // logger.d('Text censored in ${stopwatch.elapsedMilliseconds} ms');
      return Left(censored);
    } else {
      stopwatch.stop();
      // logger.d('Text already ok: ${stopwatch.elapsedMilliseconds} ms');
      return Right(params);
    }
  }
}
