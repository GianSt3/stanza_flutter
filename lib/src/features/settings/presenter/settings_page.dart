import 'package:eleven_labs/elevenlabs_types.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stanza_scrapper/bloc/eleven_labs/eleven_labs_voice_cubit.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/tabs/voice_custom_tab.dart';
import 'package:stanza_scrapper/src/features/settings/presenter/tabs/voices_tab_page.dart';

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
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.dashboard),
                ),
                Tab(
                  icon: Icon(Icons.tune),
                ),
                Tab(
                  icon: Icon(Icons.brightness_5_sharp),
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
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
