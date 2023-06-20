import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/extensions/string_extensions.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";

mixin FormValidator {
  String? validateFormField({
    required FormValidationType fieldType,
    required BuildContext context,
    required String? value,
  }) {
    switch (fieldType) {
      case FormValidationType.email:
        return value.isEmail
            ? null
            : AppLocalizations.of(context).enterValidEmail;
      case FormValidationType.username:
        return value.isValidUsername
            ? null
            : AppLocalizations.of(context).enterValidUsername;
      case FormValidationType.password:
        return value.isStrongPassword
            ? null
            : AppLocalizations.of(context).enterValidPassword;
      case FormValidationType.groupName:
        return value is String && value.length > 2
            ? null
            : AppLocalizations.of(context).enterValidGroupName;
      case FormValidationType.categoryName:
        return value is String && value.length > 2
            ? null
            : AppLocalizations.of(context).enterValidCategoryName;
    }
  }
}
