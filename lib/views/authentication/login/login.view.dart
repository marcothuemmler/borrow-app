import "package:borrow_app/common/enums/form_validation_type.enum.dart";
import "package:borrow_app/common/mixins/form_validator.mixin.dart";
import "package:borrow_app/common/providers.dart";
import "package:borrow_app/views/authentication/auth.model.dart";
import "package:borrow_app/widgets/textform_fields/password_field.widget.dart";
import "package:borrow_app/widgets/textform_fields/textfield.widget.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() {
    return _LoginViewState();
  }
}

class _LoginViewState extends ConsumerState<LoginView> {
  bool _obscurePassword = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _toggleObscurePassword() {
    setState(() => _obscurePassword = !_obscurePassword);
  }

  @override
  Widget build(BuildContext context) {
    final LoginController controller = ref.read(
      providers.loginControllerProvider.notifier,
    );
    final LoginModel model = ref.watch(providers.loginControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).login),
      ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFieldWidget(
                        text: AppLocalizations.of(context).email,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const <String>[AutofillHints.email],
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
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                controller.login();
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

abstract class LoginController extends StateNotifier<LoginModel>
    with FormValidator {
  LoginController(super.model);

  Future<void> login();

  Future<void> logout();

  void setEmail(String value);

  void setPassword(String value);
}
