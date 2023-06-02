import 'package:borrow_app/widgets/cards/settings_card.widget.dart';
import 'package:borrow_app/widgets/list_views/settings_list_view.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupSettingsView extends StatelessWidget {
  final String groupId;
  const GroupSettingsView({super.key, required this.groupId});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SettingsListView(
          itemList: [
            SettingsCardView(
                text: "Kategorien",
                function: () { },),
            SettingsCardView(
                text: "Gegenstände",
                function: () { },),
            SettingsCardView(
                text: "Balance",
                function: () { },),
          ],
        ),
      ),
    );
  }
}