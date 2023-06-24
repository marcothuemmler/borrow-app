import "package:borrow_app/common/mixins/delete_confirm_dialog.mixin.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.model.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class DismissibleProfileItemCard extends StatelessWidget
    with DeleteConfirmMixin {
  const DismissibleProfileItemCard({
    super.key,
    required String text,
    required void Function({required String itemId}) onTap,
    required void Function({
      required String itemId,
      required bool itemIsAvailable,
    })
        onTapToggleAvailability,
    required void Function({required String itemId}) onDismiss,
    required ProfileItemListItemModel item,
  })  : _text = text,
        _item = item,
        _onDismiss = onDismiss,
        _onTap = onTap,
        _onTapToggleAvailability = onTapToggleAvailability;

  final String _text;
  final void Function({required String itemId}) _onTap;
  final void Function({required String itemId}) _onDismiss;
  final void Function({
    required String itemId,
    required bool itemIsAvailable,
  }) _onTapToggleAvailability;
  final ProfileItemListItemModel _item;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      onDismissed: (DismissDirection direction) => _onDismiss(itemId: _item.id),
      confirmDismiss: (_) => confirmDismiss(
        context: context,
        text: AppLocalizations.of(context).deleteItem,
      ),
      background: Container(
        color: Colors.red,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Icon>[
            Icon(Icons.delete, color: CupertinoColors.systemGrey6),
          ],
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 5,
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          margin: EdgeInsets.zero,
          elevation: 0,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () => _onTap(itemId: _item.id),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              child: SizedBox(
                height: 65,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 65,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(7),
                          bottomLeft: Radius.circular(7),
                        ),
                        child: Image(
                          height: double.infinity,
                          width: double.infinity,
                          image: _item.imageUrl is String
                              ? NetworkImage(_item.imageUrl!)
                              : Image.asset("assets/images/default.jpg").image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            _item.name,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                            maxLines: 1,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  _item.description ?? "",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    PopupMenuButton<ListTile>(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.more_horiz, color: Colors.black54),
                      splashRadius: 20,
                      itemBuilder: (BuildContext context) {
                        return <PopupMenuEntry<ListTile>>[
                          PopupMenuItem<ListTile>(
                            onTap: () => _onTapToggleAvailability(
                              itemId: _item.id,
                              itemIsAvailable: _item.isActive,
                            ),
                            child: ListTile(title: Text(_text)),
                          )
                        ];
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
