import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/widgets/textform_fields/password_field.widget.dart';
import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() {
    return _LoginViewState();
  }
}

class _LoginViewState extends ConsumerState<LoginView> {
  bool _obscurePassword = true;
  final _formKey = GlobalKey<FormState>();

  void _toggleObscurePassword() {
    setState(() => _obscurePassword = !_obscurePassword);
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(providers.loginControllerProvider.notifier);
    final model = ref.watch(providers.loginControllerProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Log In"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextFieldWidget(
                text: 'Email',
                autocorrect: false,
                validator: (_) => controller.validateFormField(
                  fieldName: 'email',
                ),
                onChanged: controller.setEmail,
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
    );
  }
}

abstract class LoginController extends StateNotifier<LoginModel> {
  LoginController(LoginModel model) : super(model);

  Future<void> login();

  void setEmail(String value);

  void setPassword(String value);

  String? validateFormField({required String fieldName});
}
