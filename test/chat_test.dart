import 'package:flutter_test/flutter_test.dart';
import 'package:stanza_scrapper/core/bloc/scrapper/youtube_scrapper_cubit.dart';
import 'package:stanza_scrapper/data/model/youtube_message.dart';

void main() {
  test('new messages', () {
    Chat chat = const Chat(messages: []);

    expect(chat.messages.length, 0);

    chat = chat.copyWith([
      const YoutubeMessage(
          id: 'b173cba8-716e-4086-abe1-8fba52461ea1',
          author: 'Christina Potts',
          avatarUrl: '',
          timestamp: '',
          text: 'Hi, I am Christina'),
      const YoutubeMessage(
          id: '0b702262-f21a-4322-a081-2ae01c285866',
          author: 'Ernesto Clarke',
          avatarUrl: '',
          timestamp: '',
          text: 'Hi, I am Ernesto'),
      const YoutubeMessage(
          id: '1fe7010a-8408-4727-8b80-9bab446f1173',
          author: 'Zara Chavez',
          avatarUrl: '',
          timestamp: '',
          text: 'Hi, I am Zara'),
      const YoutubeMessage(
          id: 'c8c00997-f477-4743-b07b-98b47c0b5d94',
          author: 'Emery Wang',
          avatarUrl: '',
          timestamp: '',
          text: 'Hi, I am Emery')
    ]);

    expect(chat.messages.length, 4);
    expect(chat.newMessages.length, 4);
    expect(chat.lastMessageId, null);

    chat = chat.copyWith([
      const YoutubeMessage(
          id: '1508da7a-5083-45fa-a2bc-1a89685bf625',
          author: 'Christina Potts',
          avatarUrl: '',
          timestamp: '',
          text: 'Hi, I am Christina again'),
    ]);

    expect(chat.lastMessageId, 'c8c00997-f477-4743-b07b-98b47c0b5d94');
    expect(chat.messages.length, 5);
    expect(chat.newMessages.length, 1);

    chat = chat.copyWith([
      const YoutubeMessage(
          id: 'ce23a158-8b7b-4135-a422-7fbe6dab2477',
          author: 'Christina Potts',
          avatarUrl: '',
          timestamp: '',
          text: 'Hello, Christina here'),
      const YoutubeMessage(
          id: '182459fa-e5b5-40c2-a8df-e6ca1e84a3b5',
          author: 'Christina Potts',
          avatarUrl: '',
          timestamp: '',
          text: 'Hello? Is there anybody in there'),
    ]);

    expect(chat.lastMessageId, '1508da7a-5083-45fa-a2bc-1a89685bf625');

    expect(chat.newMessages.length, 2);
  });
}
