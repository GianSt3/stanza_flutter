import 'package:flutter/material.dart';

import '../perform/presenter/perform_setup_page.dart';
import '../poll/presenter/poll_setup_page.dart';

/// Page to setup a minigame, saving on pc
class MinigameSetupPage extends StatelessWidget {
  const MinigameSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(tabs: [
              Tab(
                text: 'Poll - Sondaggio',
              ),
              Tab(
                text: 'Perform - Recitata',
              )
            ]),
            Expanded(
              child: TabBarView(children: [
                PollSetupPage(),
                PerformSetupPage(),
              ]),
            ),
          ],
        ));
  }
}
