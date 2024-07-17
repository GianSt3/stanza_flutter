import 'package:flutter_test/flutter_test.dart';
import 'package:stanza_scrapper/domain/usecases/commands/me_use_case.dart';
import 'package:stanza_scrapper/domain/usecases/dice/dice_use_case.dart';

void main() {
  final usecase = MeUseCase();
  test('No command get an Exception', () {
    final result = usecase(params: 'No command');
    expect(result.isLeft, true);
  });

  test('Get message after command', () {
    final result = usecase(params: '/me Hey');
    expect(result.isLeft, false);
    expect(result.right, "Hey");
  });

  test('Does recognize command', () {
    final result = usecase(params: '/meHey you ');
    expect(result.isLeft, false);
    expect(result.right, "Hey you");
  });

  test('Does not recognize command', () {
    final result = usecase(params: 'Hey you /me');
    expect(result.isLeft, true);
  });
}
