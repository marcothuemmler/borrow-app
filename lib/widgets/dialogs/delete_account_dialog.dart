import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/profile_settings/profile_settings.view.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class DeleteAccountDialog extends ConsumerWidget {
  const DeleteAccountDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormState> formKey = GlobalKey();
    final TextEditingController textEditingController = TextEditingController();
    final ProfileSettingsController controller =
        ref.read(providers.profileSettingsControllerProvider.notifier);
    return SafeArea(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "${AppLocalizations.of(context).deleteAccount}?",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                AppLocalizations.of(context).accountDeletionMessage,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350),
                child: Form(
                  key: formKey,
                  child: TextFormField(
                    validator: (String? value) => controller.validateFormField(
                      fieldType: FormValidationType.password,
                      context: context,
                      value: value,
                    ),
                    controller: textEditingController,
                    decoration: InputDecoration(
                      label: Text(AppLocalizations.of(context).insertPassword),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    controller.deleteAccount(
                      password: textEditingController.text,
                    );
                  }
                },
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                child: Text(AppLocalizations.of(context).deleteAccount),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
