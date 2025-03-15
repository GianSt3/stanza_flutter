import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/profanity_cubit.dart';
import '../model/profanity_firebase.dart';

class ProfanitySetupPage extends StatelessWidget {
  const ProfanitySetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfanityCubit, ProfanityState>(
      builder: (context, state) {
        return Row(
          children: [
            const Flexible(
              child: _InsertProfanity(),
            ),
            state.maybeMap(
              loaded: (loaded) => Flexible(
                child: ListView.builder(
                  itemCount: loaded.words.length,
                  itemBuilder: (context, index) {
                    final word = loaded.words.elementAt(index);
                    return ListTile(
                      title: Text('${word.word} -> ${word.replace}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () => _showUpdateDialog(context, word),
                            icon: const Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () => context
                                .read<ProfanityCubit>()
                                .remove(word.word),
                            icon: const Icon(Icons.delete_forever),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }

  void _showUpdateDialog(BuildContext context, ProfanityWord word) {
    final TextEditingController wordController =
        TextEditingController(text: word.word);
    final TextEditingController replaceController =
        TextEditingController(text: word.replace);

    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Update Word'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: wordController,
                decoration: const InputDecoration(labelText: 'Word'),
              ),
              TextField(
                controller: replaceController,
                decoration: const InputDecoration(labelText: 'Replace'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (wordController.text.isNotEmpty &&
                    replaceController.text.isNotEmpty) {
                  final updatedWord = ProfanityWord(
                    word: wordController.text,
                    replace: replaceController.text,
                  );
                  context
                      .read<ProfanityCubit>()
                      .updateWord(word.word, updatedWord);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Update'),
            ),
          ],
        );
      },
    );
  }
}

class _InsertProfanity extends StatefulWidget {
  const _InsertProfanity();

  @override
  State<_InsertProfanity> createState() => _InsertProfanityState();
}

class _InsertProfanityState extends State<_InsertProfanity> {
  final TextEditingController _wordController = TextEditingController();
  final TextEditingController _replaceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: _wordController,
            decoration: const InputDecoration(labelText: 'Word'),
          ),
          TextField(
            controller: _replaceController,
            decoration: const InputDecoration(labelText: 'Replace'),
          ),
          TextButton(
            onPressed: () {
              if (_wordController.text.isNotEmpty &&
                  _replaceController.text.isNotEmpty) {
                final newWord = ProfanityWord(
                  word: _wordController.text,
                  replace: _replaceController.text,
                );
                context.read<ProfanityCubit>().addWord(newWord);
                // Reset
                _wordController.text = '';
                _replaceController.text = '';
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
