import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/providers.dart';

class GroupView extends ConsumerStatefulWidget {

  @override
  ConsumerState<GroupView> createState() {
    return _LoginViewState();
  }
}

class _LoginViewState extends ConsumerState<GroupView> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.read(providers.groupControllerProvider.notifier);
    final model = ref.watch(providers.groupControllerProvider);

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const BackButton(),
          centerTitle: false,
          title: const Text("Gruppenansicht"),
          titleTextStyle: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 12.0,
                backgroundColor: Colors.blueAccent
            ), child: const Text("Neue Gruppe"),
            )
          ],
        ),
      ),
    );
  }
}

abstract class GroupController extends StateNotifier<int> {
  GroupController(super.state);
  void setGroups(String);
}