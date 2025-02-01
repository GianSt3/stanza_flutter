import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app/app.dart';
import '../app/gen/assets.gen.dart';
import '../core/bloc/api_key/api_key_cubit.dart';
import '../injection/dependency_injection.dart';
import 'features/clock/bloc/clock_cubit.dart';
import 'features/lobby/presenter/lobby_page.dart';
import 'features/lobby_firestore/presenter/lobby_firestore_page.dart';
import 'features/minigame_setup/presenter/minigame_setup_page.dart';
import 'features/settings/presenter/settings_page.dart';
import 'widget/mock_button_widget.dart';

class Stanza extends StatefulWidget {
  const Stanza({super.key});

  @override
  State<Stanza> createState() => _StanzaState();
}

class _Titles {
  final Widget icon;
  final String title;

  _Titles(this.icon, this.title);
}

class _StanzaState extends State<Stanza> with TickerProviderStateMixin {
  int currentPageIndex = 0;
  String appVersion = resolve<Environment>().appVersion;
  List<_Titles> titles = [
    _Titles(Assets.icons.settings.svg(), 'Settings'),
    _Titles(Assets.icons.phoneConfiguration.svg(width: 25), 'Setup minigames'),
    _Titles(Assets.icons.game.svg(), 'Stanza'),
    _Titles(const Icon(Icons.smartphone_outlined), 'Stanza4Fun'),
  ];

  Map<int, List<Widget>> _actions = {
    0: [],
    1: [],
    2: [],
    3: [IconButton(icon: const Icon(Icons.add), onPressed: () {})],
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiKeyCubit, ApiKeyState>(
      builder: (context, apiKeyState) {
        return Builder(builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(titles[currentPageIndex].title),
              actions: resolve<Environment>().isMockEnabled()
                  ? [const MockButtonWidget(), ...?_actions[currentPageIndex]]
                  : _actions[currentPageIndex],
            ),
            drawer: IntrinsicWidth(
              child: NavigationRail(
                extended: true,
                leading: Text(
                  'v $appVersion',
                ),
                onDestinationSelected: (index) {
                  apiKeyState.maybeWhen(
                    loaded: (_) => setState(() {
                      currentPageIndex = index;
                    }),
                    orElse: () => showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                        title: Text('Api KEY Not Found'),
                        icon: Icon(Icons.warning_amber),
                        content: Text(
                            "Can't find any valid apiKey for IA services. Please insert one before any other action."),
                      ),
                    ),
                  );
                },
                destinations: titles
                    .map((title) => NavigationRailDestination(
                        icon: title.icon, label: Text(title.title)))
                    .toList(),
                selectedIndex: currentPageIndex,
              ),
            ),
            body: [
              const SettingsPage(),
              const MinigameSetupPage(),
              BlocProvider(
                create: (context) => ClockCubit(),
                child: const LobbyPage(),
              ),
              const LobbyFirestorePage(),
            ][currentPageIndex],
          );
        });
      },
    );
  }
}
