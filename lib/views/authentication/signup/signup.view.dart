import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/widgets/buttons/primary_button.widget.dart';
import 'package:borrow_app/widgets/textform_fields/password_field.widget.dart';
import 'package:borrow_app/widgets/textform_fields/textfield.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const BackButton(),
          centerTitle: false,
          title: const Text("Register"),
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
            mainAxisSize: MainAxisSize.max,
            children: [
              TextFieldWidget(
                text: 'Email',
                autocorrect: false,
                validator: (_) => controller.validateFormField(fieldName: 'email'),
                onChanged: controller.setEmail,
              ),
              TextFieldWidget(
                text: 'Username',
                autocorrect: false,
                validator: (_) => controller.validateFormField(fieldName: 'username'),
                onChanged: controller.setUsername,
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
                        controller.signup();
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

abstract class SignupController extends StateNotifier<SignupDto> {
  SignupController(SignupDto model) : super(model);

  Future<void> signup();
  String? validateFormField({required String fieldName});
  void setUsername(String value);
  void setEmail(String value);
  void setPassword(String value);
}
