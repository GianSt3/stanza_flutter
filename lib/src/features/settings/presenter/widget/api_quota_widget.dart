import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/bloc/api_quota/api_quota_cubit.dart';

class ApiQuotaWidget extends StatelessWidget {
  const ApiQuotaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiQuotaCubit, ApiQuotaState>(
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => const CircularProgressIndicator(),
            loaded: (info) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [_InfoWidget(info: info), const _InfoButton()],
                ),
            orElse: () => const _InfoButton());
      },
    );
  }
}

class _InfoButton extends StatelessWidget {
  const _InfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: context.read<ApiQuotaCubit>().check,
        child: const Text("Update info"));
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget({super.key, required this.info});

  final QuotaInfo info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${(info.usedCharacters / info.totalCharacters * 100).floor()} %",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text("Used ${info.usedCharacters} of ${info.totalCharacters} quota"),
      ],
    );
  }
}
