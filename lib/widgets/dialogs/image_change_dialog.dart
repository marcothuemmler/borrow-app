import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class ImageChangeDialog extends StatelessWidget {
  final void Function()? _onSelectImageFromCameraPressed;
  final void Function()? _onSelectImageFromGalleryPressed;
  final void Function()? _onRemoveImagePressed;
  final void Function()? _onCancelPressed;
  final bool _showRemoveOption;

  const ImageChangeDialog({
    super.key,
    required void Function()? onSelectImageFromGalleryPressed,
    required void Function()? onSelectImageFromCameraPressed,
    required void Function()? onRemoveImagePressed,
    required void Function()? onCancelPressed,
    required bool showRemoveOption,
  })  : _showRemoveOption = showRemoveOption,
        _onCancelPressed = onCancelPressed,
        _onRemoveImagePressed = onRemoveImagePressed,
        _onSelectImageFromCameraPressed = onSelectImageFromCameraPressed,
        _onSelectImageFromGalleryPressed = onSelectImageFromGalleryPressed;

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
              onPressed: _onSelectImageFromGalleryPressed,
              child: Text(AppLocalizations.of(context).uploadImage),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: _onSelectImageFromCameraPressed,
              child: Text(AppLocalizations.of(context).takePicture),
            ),
            if (_showRemoveOption)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(height: 10),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    onPressed: _onRemoveImagePressed,
                    child: Text(AppLocalizations.of(context).removeImage),
                  ),
                ],
              ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: _onCancelPressed,
              child: Text(AppLocalizations.of(context).cancel),
            )
          ],
        ),
      ),
    );
  }
}
