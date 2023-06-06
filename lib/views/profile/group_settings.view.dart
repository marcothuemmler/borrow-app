import 'package:borrow_app/widgets/cards/settings_card.widget.dart';
import 'package:borrow_app/widgets/list_views/list_view.widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GroupSettingsView extends StatelessWidget {
  final String groupId;

  const GroupSettingsView({super.key, required this.groupId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListViewWidget(
        itemList: [
          SettingsCardView(
            text: "Kategorien",
            function: () {
              context.goNamed(
                "categorySettings",
                pathParameters: {"groupId": groupId},
              );
            },
          ),
          SettingsCardView(
            text: "Gegenstände",
            function: () {
              context.goNamed(
                "profileItemList",
                pathParameters: {"groupId": groupId},
              );
            },
          ),
          SettingsCardView(
            text: "Balance",
            function: () {},
          ),
        ],
      ),
    );
  }
}
