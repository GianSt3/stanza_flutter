import 'package:flutter_test/flutter_test.dart';
import 'package:stanza_scrapper/src/features/minigame_setup/poll/bloc/list/poll_list_cubit.dart';
import 'package:stanza_scrapper/src/features/minigame_setup/poll/model/poll.dart';

void main() {
  group('PollListState', () {
    test('sorts polls by favorite parameter', () {
      // Arrange
      final polls = [
        const Poll(question: 'Topolino', favorite: false, answers: []),
        const Poll(question: 'Paperino', favorite: true, answers: []),
        const Poll(question: 'Minnie', favorite: false, answers: []),
        const Poll(question: 'Pluto', favorite: true, answers: []),
        const Poll(question: 'Zio Paperone', favorite: false, answers: []),
        const Poll(question: 'Amelia', favorite: false, answers: []),
      ];
      final state = PollListState.loaded(polls);

      // Act
      final sortedPolls = state.sortedPolls;

      // Assert
      expect(sortedPolls[0].question, 'Paperino');
      expect(sortedPolls[0].favorite, true);
      expect(sortedPolls[1].question, 'Pluto');
      expect(sortedPolls[1].favorite, true);
      expect(sortedPolls[2].question, 'Amelia');
      expect(sortedPolls[2].favorite, false);
      expect(sortedPolls[3].question, 'Minnie');
      expect(sortedPolls[3].favorite, false);
      expect(sortedPolls[4].question, 'Topolino');
      expect(sortedPolls[4].favorite, false);
      expect(sortedPolls[5].question, 'Zio Paperone');
      expect(sortedPolls[5].favorite, false);
    });
  });
}
