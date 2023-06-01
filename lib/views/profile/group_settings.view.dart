import 'package:borrow_app/widgets/list_views/settings_list_view.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupSettingsView extends StatelessWidget {
  const GroupSettingsView(String groupID, {super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ["Kategorien", "Gegenstände", "Balance"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gruppen-Einstellungen"),
          leading: const BackButton(),
        ),
        body: SettingsListView(
          itemList: items,
          functions: [() => {}, () => {}, () => {}],
        ),
      ),
    );
  }
}