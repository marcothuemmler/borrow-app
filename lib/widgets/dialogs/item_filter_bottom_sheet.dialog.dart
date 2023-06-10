import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/widgets/dropdowns/dropdown.widget.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemFilterBottomSheet extends ConsumerWidget {
  const ItemFilterBottomSheet({super.key, required this.groupId});

  final String groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(
      providers.itemListControllerProvider(groupId).notifier,
    );
    final model = ref.watch(providers.itemListControllerProvider(groupId));
    return Container(
      padding: const EdgeInsets.all(30),
      constraints: const BoxConstraints(maxWidth: 600),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context).filterByCategory,
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: DropdownWidget<ItemListCategoryModel>(
                hint: Text(AppLocalizations.of(context).category),
                items: [
                  ...?model.group?.categories,
                  ItemListCategoryModel(
                    name: AppLocalizations.of(context).allCategories,
                  ),
                ],
                onChanged: controller.selectCategory,
                value: model.selectedCategory,
                mapFunction: (category) => DropdownMenuItem(
                  value: category,
                  child: Text(category.name),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context).filterByDate,
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 1.3,
              child: CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(
                    const Duration(days: 365),
                  ),
                  calendarType: CalendarDatePicker2Type.range,
                ),
                value: const [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
