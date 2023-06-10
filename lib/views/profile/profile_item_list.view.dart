import 'package:borrow_app/common/mixins/DialogMixin.dart';
import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/profile/profile_item_list.model.dart';
import 'package:borrow_app/widgets/buttons/dotted_border_button.widget.dart';
import 'package:borrow_app/widgets/cards/item_card.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:borrow_app/widgets/dropdowns/dropdown.widget.dart';

import 'category_settings.model.dart';

class ProfileItemListView extends ConsumerWidget with CategoryDialogMixin {
  final String groupId;

  const ProfileItemListView({super.key, required this.groupId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(
      providers
          .profileItemListControllerProvider(groupId)
          .notifier,
    );
    final model = ref.watch(
        providers.profileItemListControllerProvider(groupId));
    if (model.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (model.hasError) {
      return const Center(child: Text("something went wrong"));
    }
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (model.items.isNotEmpty)
            Expanded(
                child: Column(
                  children: [
                    getDropDownMenu(controller, model),
                    ListView.builder(
                      padding: const EdgeInsets.only(top: 20),
                      itemCount: model.items.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final item = model.items.elementAt(index);
                        return ItemCard(
                          item: item,
                          onTap: () =>
                              controller.navigateToItem(itemId: item.id),
                        );
                      },
                    ),
                    const Spacer(),
                    Center(
                      child: ElevatedButton(
                        onPressed: () => {},
                        child: const Text("Neuer Gegenstand"),
                      ),
                    )
                  ],
                )
            )
          else
            Expanded(
              child: Column(
                children: [
                  getDropDownMenu(controller, model),
                  const Center(
                    child: Text(
                      "It's empty in here",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  DottedBorderButton(
                    title: "Add a new item",
                    icon: const Icon(Icons.add),
                    onTap: () {},
                    width: 200,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget getDropDownMenu(ProfileItemListController controller,
      ProfileItemListModel model) {
    return DropdownWidget<CategorySettingsCategoryModel>(
      hint: const Text("Category"),
      items: [
        ...?model.categories?.categories,
        CategorySettingsCategoryModel(name: "All"),
      ],
      onChanged: controller.selectCategory,
      value: model.selectedCategory,
      mapFunction: (category) =>
          DropdownMenuItem(
            value: category,
            child: Text(category.name),
          ),
    );
  }
}

abstract class ProfileItemListController extends StateNotifier<ProfileItemListModel> {
  ProfileItemListController(super.model);

  void navigateToItem({required String itemId});

  void selectCategory(CategorySettingsCategoryModel? category);
}
