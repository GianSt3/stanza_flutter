import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/list/poll_list_cubit.dart';

class PollSetupPage extends StatelessWidget {
  const PollSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PollListCubit, PollListState>(
      builder: (context, state) {
        return Row(
          children: [
            const Flexible(
              child: _InsertPoll(
                totAnswers: 5,
              ),
            ),
            state.maybeMap(
              loaded: (loaded) => Flexible(
                child: ListView.builder(
                  itemCount: loaded.polls.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(loaded.polls.elementAt(index).question),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: loaded.polls
                          .elementAt(index)
                          .answers
                          .map((answer) => Text(
                                answer,
                                style: Theme.of(context).textTheme.bodySmall,
                              ))
                          .toList(),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () => context
                                .read<PollListCubit>()
                                .setFavorite(
                                    loaded.polls.elementAt(index).question,
                                    !loaded.polls.elementAt(index).isFavorite),
                            icon: Icon(loaded.polls.elementAt(index).isFavorite
                                ? Icons.star
                                : Icons.star_border)),
                        IconButton(
                            onPressed: () => context
                                .read<PollListCubit>()
                                .remove(loaded.polls.elementAt(index).question),
                            icon: const Icon(Icons.delete_forever)),
                      ],
                    ),
                  ),
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }
}

class _InsertPoll extends StatefulWidget {
  const _InsertPoll({required this.totAnswers});

  final int totAnswers;

  @override
  State<_InsertPoll> createState() => _InsertPollState();
}

class _InsertPollState extends State<_InsertPoll> {
  final TextEditingController _questionController = TextEditingController();
  late final List<TextEditingController> _answersControllers;

  @override
  void initState() {
    super.initState();
    _answersControllers =
        List.generate(widget.totAnswers, (_) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: _questionController,
            decoration: const InputDecoration(labelText: 'Question'),
          ),
          ..._answersControllers
              .asMap()
              .entries
              .map(
                (entry) => TextField(
                  controller: entry.value,
                  decoration:
                      InputDecoration(labelText: 'Answers ${entry.key + 1}'),
                ),
              )
              .toList(),
          TextButton(
              onPressed: () {
                if (_questionController.text.isNotEmpty &&
                    _answersControllers
                        .any((controller) => controller.text.isNotEmpty)) {
                  context.read<PollListCubit>().add(
                        _questionController.text,
                        _answersControllers
                            .where((controller) => controller.text.isNotEmpty)
                            .map((controller) => controller.text)
                            .toList(),
                      );
                  // Reset
                  _questionController.text = '';
                  for (final answer in _answersControllers) {
                    answer.text = '';
                  }
                }
              },
              child: const Text('Add'))
        ],
      ),
    );
  }
}
