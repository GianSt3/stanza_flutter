import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/bloc/api_key_cubit.dart';

class ApiKeyGuard extends StatelessWidget {
  final Widget Function(String key) child;
  final Widget? missing;

  const ApiKeyGuard({super.key, required this.child, this.missing});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiKeyCubit, ApiKeyState>(
      builder: (context, state) => state.maybeWhen(
          loaded: (apiKey) => child(apiKey),
          orElse: () => missing ?? const Text("Api Key not found")),
    );
  }
}
