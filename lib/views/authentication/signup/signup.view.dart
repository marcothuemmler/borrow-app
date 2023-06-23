import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/mixins/form_validator.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/services/routing/routes.dart";
import "package:borrow_app/views/authentication/auth.model.dart";
import "package:borrow_app/widgets/textform_fields/password_field.widget.dart";
import "package:borrow_app/widgets/textform_fields/textfield.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";

class SignupView extends ConsumerStatefulWidget {
  const SignupView({super.key});

  @override
  ConsumerState<SignupView> createState() {
    return _SignupViewState();
  }
}

class _SignupViewState extends ConsumerState<SignupView> {
  bool _obscurePassword = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _toggleObscurePassword() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final SignupController controller = ref.read(
      providers.signupControllerProvider.notifier,
    );
    final SignupModel model = ref.watch(providers.signupControllerProvider);
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).register)),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: AutofillGroup(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFieldWidget(
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const <String>[AutofillHints.email],
                        text: AppLocalizations.of(context).email,
                        autocorrect: false,
                        validator: (String? value) {
                          return controller.validateFormField(
                            fieldType: FormValidationType.email,
                            context: context,
                            value: value,
                          );
                        },
                        onChanged: controller.setEmail,
                      ),
                      TextFieldWidget(
                        keyboardType: TextInputType.name,
                        autofillHints: const <String>[AutofillHints.username],
                        text: AppLocalizations.of(context).username,
                        autocorrect: false,
                        validator: (String? value) {
                          return controller.validateFormField(
                            fieldType: FormValidationType.username,
                            context: context,
                            value: value,
                          );
                        },
                        onChanged: controller.setUsername,
                      ),
                      PasswordFieldWidget(
                        text: AppLocalizations.of(context).password,
                        validator: (String? value) {
                          return controller.validateFormField(
                            fieldType: FormValidationType.password,
                            context: context,
                            value: value,
                          );
                        },
                        onTapIcon: _toggleObscurePassword,
                        onChanged: controller.setPassword,
                        obscureText: _obscurePassword,
                      ),
                      if (model.hasError)
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              AppLocalizations.of(context).loginFailed,
                              style: const TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButton(
                            child: Text(AppLocalizations.of(context).submit),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                final bool success = await controller.signup();
                                if (success && mounted) {
                                  context.goNamed(welcomeRoute.name);
                                }
                              }
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

abstract class SignupController extends StateNotifier<SignupModel>
    with FormValidator {
  SignupController(super.model);

  Future<bool> signup();

  void setUsername(String value);

  void setEmail(String value);

  void setPassword(String value);
}
