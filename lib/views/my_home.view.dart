import 'package:borrow_app/common/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomeView extends ConsumerStatefulWidget {
  const MyHomeView({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomeView> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomeView> {

  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(providers.homeViewControllerProvider);
    final controller = ref.read(providers.homeViewControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

abstract class MyHomeViewController extends StateNotifier<int> {
  MyHomeViewController(counter) : super(counter);
  void increment();
}