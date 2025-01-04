import 'package:flutter_test/flutter_test.dart';
import 'package:stanza_scrapper/domain/usecases/firestore/swearword_filter_use_case.dart';

void main() {
  final usecase = SwearWordFilterUseCase();

  test('Test', () {
    const text = 'Ciao Asdrubale';
    final result = usecase(params: text);
    expect(result.isRight, true);
    expect(result.right, text);
  });

  test('Test', () {
    const text = 'Ciao Gesù';
    final result = usecase(params: text);
    expect(result.isRight, true);
    expect(result.right, text);
  });

  test('Test', () {
    const text = 'Ma sei coglione?';
    final result = usecase(params: text);
    expect(result.isLeft, true);
    expect(result.swap().right, 'Ma sei [censored]?');
  });

  test('Test', () {
    const text = 'Ciao Asdrubale';
    final result = usecase(params: text);
    expect(result.isRight, true);
    expect(result.right, text);
  });
}
