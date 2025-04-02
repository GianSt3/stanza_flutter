import '../../../../core/core.dart';
import '../../minigame_setup/poll/model/poll_firebase.dart';

class MaxVoteUseCase extends VoidUseCase<List<String>> {
  final List<Answer> votes;

  MaxVoteUseCase({
    required this.votes,
  });

  @override
  List<String> call() {
    if (votes.isEmpty) {
      return [];
    }
    final voteCounts = <String, int>{};
    for (final vote in votes) {
      voteCounts[vote.id] = (voteCounts[vote.id] ?? 0) + 1;
    }

    final maxVoteCount = voteCounts.values.isNotEmpty
        ? voteCounts.values.reduce((a, b) => a > b ? a : b)
        : 0;

    final maxVotedAnswerIds = voteCounts.entries
        .where((entry) => entry.value == maxVoteCount)
        .map((entry) => entry.key)
        .toList();

    return maxVotedAnswerIds;
  }
}
