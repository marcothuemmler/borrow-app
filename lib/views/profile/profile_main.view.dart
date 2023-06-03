import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:borrow_app/widgets/list_views/list_view.widget.dart';

import '../../widgets/cards/settings_card.widget.dart';

class ProfileMain extends ConsumerWidget {
  final String groupId;
  const ProfileMain({super.key, required this.groupId});

  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListViewWidget(
                    itemList: [
                      SettingsCardView(
                        text: "Gruppe verwalten",
                        function: () {context.goNamed("groupSettings", pathParameters: {"groupId": groupId});},),
                      SettingsCardView(
                        text: "Meine Einstellungen",
                        function: () {  },),
                    ],
                  ),
                  const Spacer(),
                  Center(
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: const Text("Logout"),
                    ),
                  )
                ],
              ),
          ),
        ),
    );
  }
}