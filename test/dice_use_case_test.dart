import 'package:flutter_test/flutter_test.dart';
import 'package:stanza_scrapper/domain/usecases/dice/dice_use_case.dart';

void main() {
  final usecase = DiceUseCase();
  test('No command get an Exception', () {
    final result = usecase(params: 'No command');
    expect(result.isLeft, true);
  });

  test('Get actual random number', () {
    final result = usecase(params: '/d6');
    expect(result.isLeft, false);
    print(result.right);
    expect(result.right.length, 1);
  });

  test('Get actual random number', () {
    final result = usecase(params: '/d6 and /d8');
    expect(result.isLeft, false);
    print(result.right);
    expect(result.right.length, 2);
  });

  test('Get actual random number', () {
    final result = usecase(params: '/d6 and /d8 aaand /d20');
    expect(result.isLeft, false);
    print(result.right);
    expect(result.right.length, 3);
  });

  test('DOUBLE DICE Get actual random number', () {
    final result = usecase(params: '/2d6');
    expect(result.isLeft, false);
    print(result.right);
    expect(result.right.length, 2);
  });

  test('DOUBLE DICE Get actual random number', () {
    final result = usecase(params: '/2d6 /3d4');
    expect(result.isLeft, false);
    print(result.right);
    expect(result.right.length, 5);
  });

  test('MIXED DICE Get actual random number', () {
    final result = usecase(params: '/d6 /2d4');
    expect(result.isLeft, false);
    print(result.right);
    expect(result.right.length, 3);
  });
}
