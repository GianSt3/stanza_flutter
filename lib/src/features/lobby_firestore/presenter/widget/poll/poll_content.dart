part of '../poll_minigame_content.dart';

/// Displays the poll question and answers
class _PollContent extends StatelessWidget {
  final PollFirebase poll;
  final BoxConstraints constraints;
  final List<Answer> votes;
  final int maxVotes;

  const _PollContent({
    super.key,
    required this.poll,
    required this.constraints,
    required this.votes,
    required this.maxVotes,
  });

  @override
  Widget build(BuildContext context) {
    // Get the most voted answer
    final String maxVotedAnswerId = MaxVoteUseCase(votes: votes).call();

    // Display the poll question and answers
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Display the poll question
        Text(poll.question, style: Theme.of(context).textTheme.titleLarge),

        const SizedBox(height: 56),

        // Display the answers
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: poll.answers.map((answer) {
            // Calculate the width of the vote bar
            final voteWidth =
                (constraints.maxWidth - 100) / (poll.answers.length * 2);

            // Check if the answer is the most voted
            final isMaxVoted = answer.id == maxVotedAnswerId;

            return Column(
              children: [
                Text(
                  answer.text,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                _Votes(
                    width: voteWidth,
                    votes: votes.where((vote) => vote.id == answer.id).length,
                    isMaxVoted: isMaxVoted,
                    maxVotes: maxVotes),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
