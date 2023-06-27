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
    if (model.hasError) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(AppLocalizations.of(context).unspecifiedError),
        ),
      );
    }
    final ItemDetailItemModel item = model.item!;
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: SafeArea(
        child: isPortrait
            ? SingleChildScrollView(
                child: _ItemDetail.portrait(
                  item: item,
                  onTapContactOwner: controller.contactOwner,
                ),
              )
            : _ItemDetail.landscape(
                item: item,
                onTapContactOwner: controller.contactOwner,
              ),
      ),
    );
  }
}

class _ItemDetail extends StatelessWidget {
  const _ItemDetail({
    required bool isPortrait,
    required ItemDetailItemModel item,
    required void Function({required String ownerId}) onTapContactOwner,
  })  : _onTapContactOwner = onTapContactOwner,
        _item = item,
        _isPortrait = isPortrait;

  factory _ItemDetail.portrait({
    required void Function({required String ownerId}) onTapContactOwner,
    required ItemDetailItemModel item,
  }) {
    return _ItemDetail(
      isPortrait: true,
      item: item,
      onTapContactOwner: onTapContactOwner,
    );
  }

  factory _ItemDetail.landscape({
    required void Function({required String ownerId}) onTapContactOwner,
    required ItemDetailItemModel item,
  }) {
    return _ItemDetail(
      isPortrait: false,
      item: item,
      onTapContactOwner: onTapContactOwner,
    );
  }

  final bool _isPortrait;
  final ItemDetailItemModel _item;
  final void Function({required String ownerId}) _onTapContactOwner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: _isPortrait ? 30 : 15,
      ),
      child: Flex(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: _isPortrait ? Axis.vertical : Axis.horizontal,
        children: <Widget>[
          Flexible(
            child: SingleChildScrollView(
              child: Column(
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
                          child: _item.imageUrl is String
                              ? GestureDetector(
                                  onTap: () => showImageViewer(
                                    context,
                                    NetworkImage(_item.imageUrl!),
                                    swipeDismissible: true,
                                    doubleTapZoomable: true,
                                  ),
                                  child: Image.network(
                                    _item.imageUrl!,
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
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      foregroundImage: _item.owner.imageUrl is String
                          ? NetworkImage(_item.owner.imageUrl!)
                          : null,
                      radius: 14,
                      backgroundColor: CupertinoColors.systemGrey5,
                      foregroundColor: Colors.grey,
                      child: const Icon(Icons.person, size: 17),
                    ),
                    title: Text(
                      "@${_item.owner.username}",
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
                            enabled: !_item.isMyItem,
                            onTap: () => _onTapContactOwner(
                              ownerId: _item.owner.id,
                            ),
                            child: Text(
                              AppLocalizations.of(context).contactOwner,
                            ),
                          ),
                        ];
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!_isPortrait)
            const VerticalDivider(
              width: 40,
              color: CupertinoColors.systemGrey2,
            ),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (_isPortrait) const SizedBox(height: 10),
                  Text(
                    "${AppLocalizations.of(context).description}:",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    _item.description ??
                        AppLocalizations.of(context).noDescription,
                  ),
                  const SizedBox(height: 30),
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
                      color: CupertinoColors.systemGrey5,
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
        ],
      ),
    );
  }
}

abstract class ItemDetailController extends StateNotifier<ItemDetailModel> {
  ItemDetailController(super.model);

  void contactOwner({required String ownerId});

  void selectDate();
}
