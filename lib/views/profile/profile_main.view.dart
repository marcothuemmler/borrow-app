import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/list_views/settings_list_view.widget.dart';

class ProfileMain extends ConsumerWidget {
  const ProfileMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {
    final List<String> items = ["Gruppe verwalten", "Meine Einstellungen"];
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingsListView(
                    itemList: items,
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
        )
    );
  }
}