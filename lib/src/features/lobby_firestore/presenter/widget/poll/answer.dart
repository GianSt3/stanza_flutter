part of '../poll_minigame_content.dart';

class _Answer extends StatelessWidget {
  final String text;
  final bool isMaxVoted;
  final int votes;

  const _Answer(
      {super.key,
      required this.text,
      required this.isMaxVoted,
      required this.votes});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
            border: Border.all(color: Colors.yellow, width: 5),
            borderRadius: BorderRadius.circular(50),
            boxShadow: isMaxVoted
                ? [
                    BoxShadow(
                        color: Colors.yellow.withAlpha(230), blurRadius: 20)
                  ]
                : [],
          ),
          child: StrokeTextWidget(text: text, strokeWidth: 5),
        ),
        Positioned(
          bottom: 0,
          right: 5,
          child: Container(
            clipBehavior: Clip.antiAlias,
            width: 45,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                '$votes',
                style: const TextStyle(
                    fontFamily: FontFamily.draconis,
                    fontSize: 10,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
