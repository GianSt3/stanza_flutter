import 'package:flutter/material.dart';
import 'package:stanza_scrapper/gen/assets.gen.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/tabs/voice_custom_tab.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/tabs/voices_tab_page.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/widget/api_quota_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Assets.icons.dashboard.svg(),
                ),
                Tab(
                  icon: Assets.icons.config.svg(),
                ),
                Tab(
                  icon: Assets.icons.info.svg(),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: VoicesTabPage(),
            ),
            Center(
              child: VoiceCustomTab(),
            ),
            Center(
              child: ApiQuotaWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
