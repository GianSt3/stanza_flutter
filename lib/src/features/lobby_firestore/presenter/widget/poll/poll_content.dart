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
        StrokeTextWidget(
          text: poll.question,
          strokeWidth: 5,
        ),

        const SizedBox(height: 56),

        // Display the answers
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Maximum 2 columns
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio:
                    (constraints.maxWidth / 2) / 100, // Adjust as needed
              ),
              itemCount: poll.answers.length,
              itemBuilder: (context, index) {
                final answer = poll.answers[index];
                // Calculate the width of the vote bar

                // Check if the answer is the most voted
                final isMaxVoted = answer.id == maxVotedAnswerId;
                final totalVotes =
                    votes.where((vote) => vote.id == answer.id).length;

                return _Answer(
                    text: answer.text,
                    votes: totalVotes,
                    isMaxVoted: isMaxVoted);

                return Column(
                  children: [
                    Text(
                      answer.text,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    _Votes(
                        width: (constraints.maxWidth - 100) / 4,
                        votes:
                            votes.where((vote) => vote.id == answer.id).length,
                        isMaxVoted: isMaxVoted,
                        maxVotes: maxVotes),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
