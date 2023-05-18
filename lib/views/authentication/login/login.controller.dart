import 'package:borrow_app/util/extensions.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/authentication/auth.service.dart';
import 'package:borrow_app/views/authentication/login/login.view.dart';
import 'package:email_validator/email_validator.dart';

class LoginControllerImplementation extends LoginController {
  final AuthService _signupService;

  LoginControllerImplementation({
    required AuthService authService,
    LoginDto? model,
  })  : _signupService = authService,
        super(
          model ??
              const LoginDto(
                email: null,
                password: null,
              ),
        );

  @override
  void setEmail(String value) {
    state = state.copyWith(email: value);
  }

  @override
  void setPassword(String value) {
    state = state.copyWith(password: value);
  }

  @override
  Future<void> login() {
    return _signupService.login(payload: state);
  }

  @override
  String? validateFormField({required String fieldName}) {
    switch (fieldName) {
      case 'email':
        return EmailValidator.validate(state.email ?? "") ? null : "Bitte geben Sie eine gültige Email ein";
      case 'password':
        return state.password != null && state.password!.isStrongPassword
            ? null
            : 'Passwort muss mindestens 8 Zeichen lang sein und mindestens eine Zahl, einen Großbuchstaben und einen Kleinbuchstaben enthalten';
      default:
        return null;
    }
  }
}
