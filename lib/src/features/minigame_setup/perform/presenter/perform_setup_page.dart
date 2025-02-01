import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/perform_list_cubit.dart';

class PerformSetupPage extends StatelessWidget {
  const PerformSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PerformListCubit, PerformListState>(
      builder: (context, state) {
        return Row(
          children: [
            const Flexible(
              child: _InsertPerform(),
            ),
            state.maybeMap(
              loaded: (loaded) => Flexible(
                child: ListView.builder(
                  itemCount: loaded.performs.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(loaded.performs.elementAt(index).title),
                    subtitle: Text(
                      loaded.performs.elementAt(index).content,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () => context
                                .read<PerformListCubit>()
                                .setFavorite(
                                    loaded.performs.elementAt(index).title,
                                    !loaded.performs
                                        .elementAt(index)
                                        .isFavorite),
                            icon: Icon(
                                loaded.performs.elementAt(index).isFavorite
                                    ? Icons.star
                                    : Icons.star_border)),
                        IconButton(
                            onPressed: () => context
                                .read<PerformListCubit>()
                                .remove(loaded.performs.elementAt(index).title),
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

class _InsertPerform extends StatefulWidget {
  const _InsertPerform();

  @override
  State<_InsertPerform> createState() => _InsertPerformState();
}

class _InsertPerformState extends State<_InsertPerform> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _performController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _performController,
            maxLines: 10,
            decoration: const InputDecoration(
              labelText: 'Perform',
            ),
          ),
          TextButton(
              onPressed: () {
                if (_titleController.text.isNotEmpty &&
                    _performController.text.isNotEmpty) {
                  context.read<PerformListCubit>().add(
                        _titleController.text,
                        _performController.text,
                      );
                  // Reset
                  _titleController.text = '';
                  _performController.text = '';
                }
              },
              child: const Text('Add'))
        ],
      ),
    );
  }
}
