import 'package:either_dart/src/either.dart';
import 'package:eleven_labs/elevenlabs_types.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';
import 'package:stanza_scrapper/domain/entities/custom_voice.dart';
import 'package:stanza_scrapper/domain/usecases/elevenlabs/synthesize_use_case.dart';
import 'package:stanza_scrapper/domain/usecases/message/message_loader_use_case.dart';
import 'package:stanza_scrapper/src/features/game/bloc/messages/game_messages_cubit.dart';
import 'package:stanza_scrapper/src/features/game/model/audio_message.dart';
import 'package:stanza_scrapper/src/features/game/model/player.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final usecase = MessageLoaderUseCase(synthesize: _MockSynthesize());

  test('No messages get an Exception', () async {
    final result = await usecase(
        params: const GameMessagesState(
      status: GameMessagesStatus.initial(),
      apiStatus: GameMessagesLoadStatus.initial(),
    ));
    expect(result.isLeft, true);
  });

  test('A message gets a result', () async {
    var state = GameMessagesState(
      status: const GameMessagesStatus.initial(),
      apiStatus: const GameMessagesLoadStatus.initial(),
      messages: [
        AudioMessage(
            player: Player(name: "Giovanni Giorgio", voice: CustomVoice()),
            message: const YoutubeMessage(
                id: 'b173cba8-716e-4086-abe1-8fba52461ea1',
                author: 'Giovanni Giorgio',
                avatarUrl: '',
                timestamp: '',
                created: 0,
                text:
                    'Hi, my name is Giovanni Giorgio, but everyone calls me Giorgio.'),
            created: DateTime.now())
      ],
    );

    final result = await usecase(
      params: state,
    );
    expect(result.isRight, true);

    final noResult = await usecase(
      params: result.right,
    );
    expect(noResult.isLeft, true);
  });

  test('A message gets a result as ME Command', () async {
    var state = GameMessagesState(
      status: const GameMessagesStatus.initial(),
      apiStatus: const GameMessagesLoadStatus.initial(),
      messages: [
        AudioMessage(
            player: Player(name: "Giovanni Giorgio", voice: CustomVoice()),
            message: const YoutubeMessage(
                id: 'b173cba8-716e-4086-abe1-8fba52461ea1',
                author: 'Giovanni Giorgio',
                avatarUrl: '',
                timestamp: '',
                created: 0,
                text:
                    '/me Hi, my name is Giovanni Giorgio, but everyone calls me Giorgio.'),
            created: DateTime.now())
      ],
    );

    final result = await usecase(
      params: state,
    );
    expect(result.isRight, true);
    expect(result.right.messages.first.audioType, AudioType.me);
  });

  test('A message gets a result as DICE Command', () async {
    var state = GameMessagesState(
      status: const GameMessagesStatus.initial(),
      apiStatus: const GameMessagesLoadStatus.initial(),
      messages: [
        AudioMessage(
            player: Player(name: "Giovanni Giorgio", voice: CustomVoice()),
            message: const YoutubeMessage(
                id: 'b173cba8-716e-4086-abe1-8fba52461ea1',
                author: 'Giovanni Giorgio',
                avatarUrl: '',
                timestamp: '',
                created: 0,
                text: '/d20'),
            created: DateTime.now())
      ],
    );

    final result = await usecase(
      params: state,
    );
    expect(result.isRight, true);
    expect(result.right.messages.first.audioType, AudioType.dice);
  });
}

class _MockSynthesize extends ISynthesizeUseCase {
  @override
  Future<Either<Exception, Uint8List>> call(
      {required TextToSpeechRequest params}) async {
    final result = (await rootBundle.load("assets/audio/beep_038.wav"))
        .buffer
        .asUint8List();
    return Right(result);
  }
}
