import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:borrow_app/widgets/items/settings_item.widget.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:borrow_app/common/mixins/delete_confirm_dialog.mixin.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

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

class _DismissibleItemState extends State<DismissibleItem> with DeleteConfirmMixin {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      onDismissed: widget._onDismissed,
      confirmDismiss: (dir) {
        return confirmDismiss(dir, context, AppLocalizations.of(context).deleteCategory);
      },
      key: UniqueKey(),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(height: 0.5, color: Colors.black.withOpacity(0.1)),
          Flexible(
            child: Row(
              children: <Widget>[
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
}
