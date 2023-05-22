import 'package:borrow_app/views/authentication/auth.service.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.service.dart';
import 'package:borrow_app/views/group_selection/group_selection.service.dart';

abstract class BackendServiceAggregator implements AuthService, ItemListService, GroupSelectionService {}
