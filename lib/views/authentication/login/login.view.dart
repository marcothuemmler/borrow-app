import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/widgets/buttons/primary_button.widget.dart';
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
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const BackButton(),
          centerTitle: false,
          title: const Text("Log In"),
          titleTextStyle: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black),
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
                validator: (_) => controller.validateFormField(fieldName: 'email'),
                onChanged: controller.setEmail,
              ),
              PasswordFieldWidget(
                text: 'Password',
                validator: (_) => controller.validateFormField(fieldName: 'password'),
                onTapIcon: _toggleObscurePassword,
                onChanged: controller.setPassword,
                obscureText: _obscurePassword,
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryButtonWidget(
                    text: "Submit",
                    onPressed: () {
                      _formKey.currentState!.save();
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

abstract class LoginController extends StateNotifier<LoginDto> {
  LoginController(LoginDto model) : super(model);

  Future<void> login();
  void setEmail(String value);
  void setPassword(String value);
  String? validateFormField({required String fieldName});
}
