import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/item_detail/item_detail.model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemDetailView extends ConsumerWidget {
  final String itemId;

  const ItemDetailView({super.key, required this.itemId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(
      providers.itemDetailControllerProvider(itemId).notifier,
    );
    final model = ref.watch(providers.itemDetailControllerProvider(itemId));
    if (model.isLoading) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (model.hasError) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(AppLocalizations.of(context).unspecifiedError),
        ),
      );
    }
    return model.item.fold(
      () => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(AppLocalizations.of(context).unspecifiedError),
        ),
      ),
      (item) => Scaffold(
        appBar: AppBar(title: Text(item.name)),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Center(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: AspectRatio(
                              aspectRatio: 1.5,
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 3),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(7),
                                  ),
                                  child: Image.asset(
                                    "assets/images/default.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const SizedBox(width: 5),
                              const CircleAvatar(
                                radius: 14,
                                backgroundColor:
                                    Color.fromARGB(255, 220, 220, 220),
                                foregroundColor: Colors.grey,
                                child: Icon(Icons.person, size: 18),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "@${item.owner.username}",
                                style: const TextStyle(color: Colors.black54),
                              ),
                              const Spacer(),
                              if (!item.isMyItem)
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 13,
                                    ),
                                  ),
                                  onPressed: () => controller.contactOwner(
                                    ownerId: item.owner.id,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context).contactOwner,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              const SizedBox(width: 5)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 30),
                              Text(
                                "${AppLocalizations.of(context).description}:",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Text(
                                item.description ??
                                    AppLocalizations.of(context).noDescription,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 50),
                              Text(
                                "${AppLocalizations.of(context).available}:",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 40),
                              DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 3),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: AspectRatio(
                                  aspectRatio: 1.3,
                                  child: CalendarDatePicker2(
                                    config: CalendarDatePicker2Config(
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.now().add(
                                        const Duration(days: 365),
                                      ),
                                      calendarType:
                                          CalendarDatePicker2Type.range,
                                    ),
                                    value: const [],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract class ItemDetailController extends StateNotifier<ItemDetailModel> {
  ItemDetailController(super.model);

  void contactOwner({required String ownerId});

  void selectDate();
}
