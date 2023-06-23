import "dart:js";

import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import 'package:borrow_app/widgets/cards/item_card.widget.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:go_router/go_router.dart";

class ItemCardDismissable extends StatelessWidget {
  final void Function({required String itemId}) _onTap;
  final void Function({required String itemId}) _onDismiss;
  final ItemListItemModel item;

  const ItemCardDismissable({
    super.key,
    required void Function({required String itemId}) onTap,
    required void Function({required String itemId}) onDismiss,
    required this.item,
  }) :  _onTap = onTap,
        _onDismiss = onDismiss;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        onDismissed: (dir) => {
          _onDismiss(itemId: item.id),
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
        item: item,
        onTap: () => {_onTap(itemId: item.id)},
      )
    );
  }
}