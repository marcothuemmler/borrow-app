import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/services/routing/routes.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/widgets/textform_fields/password_field.widget.dart';
import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignupView extends ConsumerStatefulWidget {
  const SignupView({super.key});

  @override
  ConsumerState<SignupView> createState() {
    return _SignupViewState();
  }
}

class _SignupViewState extends ConsumerState<SignupView> {
  bool _obscurePassword = true;
  final _formKey = GlobalKey<FormState>();
  void _toggleObscurePassword() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(providers.signupControllerProvider.notifier);
    final model = ref.watch(providers.signupControllerProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Register"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Form(
          key: _formKey,
          child: AutofillGroup(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFieldWidget(
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: const [AutofillHints.email],
                  text: 'Email',
                  autocorrect: false,
                  validator: (_) => controller.validateFormField(
                    fieldName: 'email',
                  ),
                  onChanged: controller.setEmail,
                ),
                TextFieldWidget(
                  keyboardType: TextInputType.name,
                  autofillHints: const [AutofillHints.username],
                  text: 'Username',
                  autocorrect: false,
                  validator: (_) => controller.validateFormField(
                    fieldName: 'username',
                  ),
                  onChanged: controller.setUsername,
                ),
                PasswordFieldWidget(
                  text: 'Password',
                  validator: (_) => controller.validateFormField(
                    fieldName: 'password',
                  ),
                  onTapIcon: _toggleObscurePassword,
                  onChanged: controller.setPassword,
                  obscureText: _obscurePassword,
                ),
                if (model.hasError)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Beim Einloggen ist etwas schiefgelaufen",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      child: const Text("Submit"),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          controller.signup().then((success) {
                            if (success) {
                              context.goNamed(welcomeRoute.name);
                            }
                          });
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
    );
  }
}

abstract class SignupController extends StateNotifier<SignupModel> {
  SignupController(SignupModel model) : super(model);

  Future<bool> signup();

  String? validateFormField({required String fieldName});

  void setUsername(String value);

  void setEmail(String value);

  void setPassword(String value);
}
