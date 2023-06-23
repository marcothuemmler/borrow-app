import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:go_router/go_router.dart";

mixin DeleteConfirmMixin {
  Future<bool?> confirmDismiss(DismissDirection ignored, BuildContext context, String text) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          title: Text(text),
          actions: <TextButton>[
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