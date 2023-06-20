import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class ImageChangeDialog extends StatelessWidget {
  final void Function()? onSetImagePressed;
  final void Function()? onRemoveImagePressed;
  final void Function()? onCancelPressed;
  final bool showRemoveOption;

  const ImageChangeDialog({
    super.key,
    required this.onSetImagePressed,
    required this.onRemoveImagePressed,
    required this.onCancelPressed,
    required this.showRemoveOption,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      content: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: onSetImagePressed,
              child: Text(AppLocalizations.of(context).uploadImage),
            ),
            if (showRemoveOption)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(height: 10),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    onPressed: onRemoveImagePressed,
                    child: Text(AppLocalizations.of(context).removeImage),
                  ),
                ],
              ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: onCancelPressed,
              child: Text(AppLocalizations.of(context).cancel),
            )
          ],
        ),
      ),
    );
  }
}
