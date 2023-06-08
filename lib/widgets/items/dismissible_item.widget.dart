import 'package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart';
import 'package:borrow_app/widgets/items/settings_item.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class DismissibleItem extends StatefulWidget {
  const DismissibleItem({
    super.key,
    required CategorySettingsCategoryModel item,
    required void Function(DismissDirection) onDismissed,
  })  : _item = item,
        _onDismissed = onDismissed;

  final CategorySettingsCategoryModel _item;
  final void Function(DismissDirection) _onDismissed;

  @override
  State<DismissibleItem> createState() => _DismissibleItemState();
}

class _DismissibleItemState extends State<DismissibleItem> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      onDismissed: widget._onDismissed,
      confirmDismiss: _confirmDismiss,
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.delete,
              color: CupertinoColors.systemGrey6,
            ),
          ],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(height: 0.5, color: Colors.black.withOpacity(0.1)),
          Flexible(
            child: Row(
              children: [
                Flexible(
                  child: SettingsItem(
                    text: widget._item.name,
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    CupertinoIcons.line_horizontal_3,
                    color: CupertinoColors.systemGrey.withOpacity(0.8),
                    size: 26,
                  ),
                ),
                const SizedBox(width: 25),
              ],
            ),
          ),
          Container(height: 0.5, color: Colors.black.withOpacity(0.1)),
        ],
      ),
    );
  }

  Future<bool?> _confirmDismiss(DismissDirection ignored) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          title: Text(AppLocalizations.of(context).deleteCategory),
          actions: [
            TextButton(
              onPressed: context.pop,
              child: Text(AppLocalizations.of(context).cancel),
            ),
            TextButton(
              onPressed: () => context.pop(true),
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: Text(AppLocalizations.of(context).delete),
            ),
          ],
        );
      },
    );
  }
}
