import 'package:borrow_app/util/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

mixin FormValidator {
  String? validateFormField({
    required String fieldName,
    required BuildContext context,
    required String? value,
  }) {
    switch (fieldName) {
      case 'email':
        return value.isEmail
            ? null
            : AppLocalizations.of(context).enterValidEmail;
      case 'username':
        return value.isValidUsername
            ? null
            : AppLocalizations.of(context).enterValidUsername;
      case 'password':
        return value.isStrongPassword
            ? null
            : AppLocalizations.of(context).enterValidPassword;
      case 'groupName':
        return value is String && value.length > 2
            ? null
            : AppLocalizations.of(context).enterValidGroupName;
    }
    return null;
  }
}
