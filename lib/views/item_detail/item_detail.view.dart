import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/item_detail/item_detail.model.dart";
import "package:borrow_app/widgets/various_components/image_placeholder.widget.dart";
import "package:calendar_date_picker2/calendar_date_picker2.dart";
import "package:easy_image_viewer/easy_image_viewer.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:skeletons/skeletons.dart";

class ItemDetailView extends ConsumerWidget {
  final String _itemId;

  const ItemDetailView({super.key, required String itemId}) : _itemId = itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ItemDetailController controller = ref.read(
      providers.itemDetailControllerProvider(_itemId).notifier,
    );
    final ItemDetailModel model = ref.watch(
      providers.itemDetailControllerProvider(_itemId),
    );
    if (model.isLoading) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (model.hasError || model.item is! ItemDetailItemModel) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(AppLocalizations.of(context).unspecifiedError),
        ),
      );
    }
    final ItemDetailItemModel item = model.item!;
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: AspectRatio(
                      aspectRatio: 1.5,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
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
                          child: item.imageUrl is String
                              ? GestureDetector(
                                  onTap: () => showImageViewer(
                                    context,
                                    NetworkImage(item.imageUrl!),
                                    swipeDismissible: true,
                                    doubleTapZoomable: true,
                                  ),
                                  child: Image.network(
                                    item.imageUrl!,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    loadingBuilder: (
                                      _,
                                      Widget child,
                                      ImageChunkEvent? event,
                                    ) {
                                      if (event is! ImageChunkEvent) {
                                        return child;
                                      }
                                      return const SkeletonAvatar();
                                    },
                                  ),
                                )
                              : const ImagePlaceholder(
                                  iconData: Icons.image_outlined,
                                  size: 150,
                                ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      foregroundImage: item.owner.imageUrl is String
                          ? NetworkImage(item.owner.imageUrl!)
                          : null,
                      radius: 14,
                      backgroundColor: CupertinoColors.systemGrey5,
                      foregroundColor: Colors.grey,
                      child: const Icon(Icons.person, size: 17),
                    ),
                    title: Text(
                      "@${item.owner.username}",
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                    trailing: PopupMenuButton<Text>(
                      splashRadius: 1,
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        opticalSize: 1,
                        Icons.more_vert,
                        color: Colors.black54,
                      ),
                      itemBuilder: (BuildContext context) {
                        return <PopupMenuItem<Text>>[
                          PopupMenuItem<Text>(
                            enabled: !item.isMyItem,
                            onTap: () => controller.contactOwner(
                              ownerId: item.owner.id,
                            ),
                            child: Text(
                              AppLocalizations.of(context).contactOwner,
                            ),
                          ),
                        ];
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
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
                      boxShadow: <BoxShadow>[
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
                          calendarType: CalendarDatePicker2Type.range,
                        ),
                        value: const <DateTime>[],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
