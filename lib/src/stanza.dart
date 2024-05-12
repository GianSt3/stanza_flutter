import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/core/bloc/api_key_cubit.dart';
import 'package:stanza_scrapper/core/bloc/api_key_cubit.dart';
import 'package:stanza_scrapper/src/features/game/presenter/game_page.dart';
import 'package:stanza_scrapper/src/features/lobby/presenter/lobby_page.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/settings_page.dart';

class Stanza extends StatefulWidget {
  const Stanza({super.key});

  @override
  State<Stanza> createState() => _StanzaState();
}

class _StanzaState extends State<Stanza> {
  int currentPageIndex = 0;
  List<String> titles = ["Settings", "Stanza", "Game"];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiKeyCubit, ApiKeyState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(titles[currentPageIndex]),
            actions: [

            ],
          ),
          drawer: IntrinsicWidth(
            child: NavigationRail(
              onDestinationSelected: (index) {
                state.maybeWhen(
                    loaded: (_) => setState(() {
                          currentPageIndex = index;
                        }),
                    orElse: () => showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                              title: Text("Api KEY Not Found"),
                              icon: Icon(Icons.warning_amber),
                              content: Text(
                                  "Can't find any valid apiKey for IA services. Please insert one before any other action. "),
                            )));
              },
              destinations: [
                NavigationRailDestination(
                    icon: const Icon(Icons.settings), label: Text(titles[0])),
                NavigationRailDestination(
                    icon: const Icon(Icons.sports_esports_outlined), label: Text(titles[1])),
                NavigationRailDestination(
                    icon: const Icon(Icons.color_lens_outlined),
                    label: Text(titles[2])),
              ],
              selectedIndex: currentPageIndex,
            ),
          ),
          body: [
            const SettingsPage(),
            const LobbyPage(),
            const GamePage()
          ][currentPageIndex],
        );
      },
    );
  }
}
