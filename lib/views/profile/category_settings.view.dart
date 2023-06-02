import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/widgets/cards/settings_card.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/providers.dart';
import '../../widgets/buttons/dotted_border_button.widget.dart';

class CategorySettingsView extends ConsumerWidget {
  final String groupId;
  const CategorySettingsView({
    super.key, required this.groupId,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(
      providers.categoriesListProvider(groupId).notifier,
    );
    final model = ref.watch(providers.categoriesListProvider(groupId));
    // TODO: implement build
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (model.isNotEmpty)
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: model.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final item = model[index];
                  return SettingsCardView(text: item.name, function: () {});
                },
              ),
            )
          else
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      "It's empty in here",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 25),
                  DottedBorderButton(
                    title: "Create a new category",
                    icon: const Icon(Icons.add),
                    width: 200, onTap: () {  },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}


abstract class CategorySettingsController extends StateNotifier<List<CategoryModel>> {
  CategorySettingsController(super.state);
  Future<void> loadCategories();
}
