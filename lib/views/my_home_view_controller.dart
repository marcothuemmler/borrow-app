import 'package:borrow_app/views/my_home.view.dart';

class MyHomeViewControllerImplementation extends MyHomeViewController {
  MyHomeViewControllerImplementation({int counter = 0}) : super(0);

  @override
  void increment() {
    state += 1;
  }
}
