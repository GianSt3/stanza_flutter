part of '../poll_minigame_content.dart';

class _Votes extends StatelessWidget {
  final int votes;
  final double width;
  final int maxVotes;
  final bool isMaxVoted;

  const _Votes(
      {super.key,
      required this.votes,
      required this.maxVotes,
      required this.width,
      required this.isMaxVoted});

  @override
  Widget build(BuildContext context) {
    final double barHeight = (votes / maxVotes) * 100;

    return Column(
      children: [
        Container(
          width: width,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(2),
            boxShadow: isMaxVoted
                ? [
                    BoxShadow(
                        color: Colors.yellow.withAlpha(100), blurRadius: 10)
                  ]
                : [],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade800),
                  color: Colors.blue,
                ),
                height: barHeight,
              ),
            ],
          ),
        ),
        Text(
          '$votes',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    );
  }
}
