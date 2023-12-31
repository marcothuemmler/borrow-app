import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/extensions/build_context_extensions.dart";
import "package:borrow_app/common/mixins/form_validator.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/profile_settings/profile_settings.model.dart";
import "package:borrow_app/widgets/dialogs/delete_account_dialog.dart";
import "package:borrow_app/widgets/various_components/image_upload.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:image_picker/image_picker.dart";

class ProfileSettingsView extends ConsumerWidget {
  ProfileSettingsView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isPortrait = context.isPortrait;
    final ProfileSettingsController controller = ref.read(
      providers.profileSettingsControllerProvider.notifier,
    );
    final ProfileSettingsModel model = ref.watch(
      providers.profileSettingsControllerProvider,
    );
    if (model.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).profileSettings),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }
    if (model.hasError) {
      return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).profileSettings),
        ),
        body: Center(
          child: Text(AppLocalizations.of(context).unspecifiedError),
        ),
      );
    }
    // Workaround for https://github.com/flutter/flutter/issues/36271
    final DeleteAccountDialog deleteAccountDialog = DeleteAccountDialog();
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).profileSettings)),
      body: SafeArea(
        child: Flex(
          mainAxisSize: MainAxisSize.min,
          direction: isPortrait ? Axis.vertical : Axis.horizontal,
          children: <Widget>[
            Flexible(
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 350),
                        child: SingleChildScrollView(
                          padding: EdgeInsets.only(top: isPortrait ? 30 : 20),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: ImageUpload(
                                      image: model.patchedProfileImage,
                                      text: AppLocalizations.of(context)
                                          .setProfileImage,
                                      onImageChanged:
                                          controller.setProfileImage,
                                    ),
                                  ),
                                ),
                                SizedBox(height: isPortrait ? 40 : 20),
                                TextFormField(
                                  autocorrect: false,
                                  initialValue: model.patchedUser?.username,
                                  onChanged: controller.setUsername,
                                  validator: (String? value) {
                                    return controller.validateFormField(
                                      fieldType: FormValidationType.username,
                                      context: context,
                                      value: value,
                                    );
                                  },
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    label: Text(
                                      AppLocalizations.of(context).username,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  autocorrect: false,
                                  initialValue: model.patchedUser?.email,
                                  onChanged: controller.setEmail,
                                  validator: (String? value) {
                                    return controller.validateFormField(
                                      fieldType: FormValidationType.email,
                                      context: context,
                                      value: value,
                                    );
                                  },
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    label: Text(
                                      AppLocalizations.of(context).email,
                                    ),
                                  ),
                                ),
                                if (isPortrait) const SizedBox(height: 30),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: model.userDataChanged || model.imageChanged
                          ? () {
                              if (_formKey.currentState!.validate()) {
                                controller.patchUser();
                              }
                            }
                          : null,
                      child: Text(
                        AppLocalizations.of(context).applyChanges,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        AppLocalizations.of(context).changePassword,
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              AppLocalizations.of(context).comingSoon,
                            ),
                          ),
                        );
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.red,
                      ),
                      onPressed: () => showModalBottomSheet<void>(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        context: context,
                        builder: (_) => Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: deleteAccountDialog,
                        ),
                      ),
                      child: Text(
                        AppLocalizations.of(context).deleteAccount,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

abstract class ProfileSettingsController
    extends StateNotifier<ProfileSettingsModel> with FormValidator {
  ProfileSettingsController(super.state);

  void patchUser();

  void setUsername(String username);

  void setEmail(String email);

  void setProfileImage(XFile? file);

  void deleteAccount({required String password});
}
