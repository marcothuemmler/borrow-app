import 'package:borrow_app/util/extensions.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/authentication/auth.service.dart';
import 'package:borrow_app/views/authentication/signup/signup.view.dart';

class SignupControllerImplementation extends SignupController {
  final AuthService _signupService;

  SignupControllerImplementation({
    required AuthService authService,
    SignupDto? model,
  })  : _signupService = authService,
        super(
          model ??
              const SignupDto(
                email: null,
                username: null,
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
  void setUsername(String value) {
    state = state.copyWith(username: value);
  }

  @override
  Future<void> signup() {
    return _signupService.signup(payload: state);
  }

  @override
  String? validateFormField({required String fieldName}) {
    switch (fieldName) {
      case 'email':
        return state.email.isEmail
            ? null
            : "Bitte geben Sie eine gültige Email ein";
      case 'username':
        return state.username.isValidUsername
            ? null
            : "Username muss mindestens 3 Zeichen haben";
      case 'password':
        return state.password.isStrongPassword
            ? null
            : 'Passwort muss mindestens 8 Zeichen lang sein und mindestens eine'
                ' Zahl, einen Großbuchstaben und einen Kleinbuchstaben'
                ' enthalten';
      default:
        return null;
    }
  }
}
