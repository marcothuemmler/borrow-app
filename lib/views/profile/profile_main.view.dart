import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/list_views/settings_list_view.widget.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ["Gruppe verwalten", "Meine Einstellungen"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gruppen-Einstellungen"),
          leading: const BackButton(),
        ),
        body: SettingsListView(
          itemList: items,
        ),
      ),
    );
  }
}