import 'package:borrow_app/views/my_home.view.dart';
import 'package:borrow_app/views/my_home_view_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final providers = Providers();

class Providers {
  final StateNotifierProvider<MyHomeViewController, int> homeViewControllerProvider =
      StateNotifierProvider((ref) => MyHomeViewControllerImplementation());
}
