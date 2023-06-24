import "package:borrow_app/common/mixins/delete_confirm_dialog.mixin.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.model.dart";
import "package:borrow_app/widgets/cards/profile_item_card.widget.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class DismissibleProfileItemCard extends StatefulWidget {
  const DismissibleProfileItemCard({
    super.key,
    required String text,
    required void Function({required String itemId}) onTap,
    required void Function() onTapToggleAvailability,
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
  final void Function() _onTapToggleAvailability;
  final ProfileItemListItemModel _item;

  @override
  State<DismissibleProfileItemCard> createState() =>
      _DismissibleProfileItemCardState();
}

class _DismissibleProfileItemCardState extends State<DismissibleProfileItemCard>
    with DeleteConfirmMixin {
  late final void Function({required String itemId}) _onDismiss;
  late final void Function() _onTapToggleAvailability;
  late final ProfileItemListItemModel _item;
  late final void Function({required String itemId}) _onTap;
  late final String _text;

  @override
  void initState() {
    super.initState();
    _text = widget._text;
    _onTap = widget._onTap;
    _item = widget._item;
    _onDismiss = widget._onDismiss;
    _onTapToggleAvailability = widget._onTapToggleAvailability;
  }

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
      child: ProfileItemCard(
        text: _text,
        item: _item,
        onTap: () => _onTap(itemId: _item.id),
        onTapToggleAvailability: _onTapToggleAvailability,
      ),
    );
  }
}
