import 'package:flutter/material.dart';

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
          children: [
            ElevatedButton(
              onPressed: onSetImagePressed,
              child: const Text("Upload Image"),
            ),
            if (showRemoveOption)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    onPressed: onRemoveImagePressed,
                    child: const Text("Remove Image"),
                  ),
                ],
              ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: onCancelPressed,
              child: const Text("Cancel"),
            )
          ],
        ),
      ),
    );
  }
}
