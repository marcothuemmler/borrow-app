import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/profile_settings/profile_settings.view.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class DeleteAccountDialog extends ConsumerWidget {
  DeleteAccountDialog({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProfileSettingsController controller =
        ref.read(providers.profileSettingsControllerProvider.notifier);
    return SafeArea(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: SingleChildScrollView(
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
                    key: _formKey,
                    child: TextFormField(
                      validator: (String? value) =>
                          controller.validateFormField(
                        fieldType: FormValidationType.password,
                        context: context,
                        value: value,
                      ),
                      controller: _textController,
                      decoration: InputDecoration(
                        label:
                            Text(AppLocalizations.of(context).insertPassword),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      controller.deleteAccount(password: _textController.text);
                    }
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                  child: Text(AppLocalizations.of(context).deleteAccount),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
