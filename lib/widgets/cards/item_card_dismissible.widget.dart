import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/widgets/cards/item_card.widget.dart";
import "package:borrow_app/common/mixins/delete_confirm_dialog.mixin.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class ItemCardDismissible extends StatefulWidget {
  const ItemCardDismissible({super.key,
    required void Function({required String itemId}) onTap,
    required void Function({required String itemId}) onDismiss,
    required ItemListItemModel item,
  })  : _item = item,
        _onDismiss = onDismiss,
        _onTap = onTap;

  final void Function({required String itemId}) _onTap;
  final void Function({required String itemId}) _onDismiss;
  final ItemListItemModel _item;

  @override
  State<ItemCardDismissible> createState() => _ItemCardDismissibleState();
}

class _ItemCardDismissibleState extends State<ItemCardDismissible> with DeleteConfirmMixin {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        onDismissed: (dir) => {
          widget._onDismiss(itemId: widget._item.id),
        },
        confirmDismiss: (dir) {
          return confirmDismiss(dir, context, AppLocalizations.of(context).deleteItem);
        },
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
      child: ItemCard(
        item: widget._item,
        onTap: () => {widget._onTap(itemId: widget._item.id)},
      )
    );
  }
}