import 'dart:math';

import 'package:either_dart/either.dart';
import 'package:stanza_scrapper/core/use_case/use_case.dart';

class DiceUseCase extends UseCase<Either<Exception, List<int>>, String> {
  RegExp singleLaunch = RegExp(r'/d(\d+)');
  RegExp doubleLaunch = RegExp(r'/(\d+)d(\d+)');

  Random random = Random();

  @override
  Either<Exception, List<int>> call({required String params}) {
    final List<RegExpMatch> singleMatches =
        singleLaunch.allMatches(params).toList();
    final List<RegExpMatch> doubleMatches =
        doubleLaunch.allMatches(params).toList();

    if (singleMatches.isEmpty && doubleMatches.isEmpty) {
      return Left(Exception('Command not present.'));
    }

    /// SINGLE DICE
    final dices = singleMatches
        .map((e) => int.tryParse(e.group(1) ?? '0')!)
        .where((element) => element != 0)
        .toList();

    /// DOUBLE DICE
    final doubleDices = doubleMatches
        .map((e) {
          final launches = int.tryParse(e.group(1) ?? '0')!;
          return List.generate(
              launches, (index) => int.tryParse(e.group(2) ?? '0')!);
        })
        .fold(
            <int>[], (previousValue, element) => [...previousValue, ...element])
        .where((element) => element != 0)
        .toList();

    /// Generate random
    final launches = [...dices, ...doubleDices]
        .map((dice) => random.nextInt(dice) + 1)
        .toList();

    return Right(launches);
  }
}
