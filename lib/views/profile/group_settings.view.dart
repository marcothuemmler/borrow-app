import 'package:borrow_app/widgets/list_views/settings_list_view.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupSettingsView extends StatelessWidget {
  final String groupId;
  const GroupSettingsView({super.key, required this.groupId});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ["Kategorien", "Gegenstände", "Balance"];
    return MaterialApp(
      home: Scaffold(
        body: SettingsListView(
          itemList: items,
          functions: [() => {}, () => {}, () => {}],
        ),
      ),
    );
  }
}