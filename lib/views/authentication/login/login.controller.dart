import 'package:borrow_app/util/extensions.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/authentication/auth.service.dart';
import 'package:borrow_app/views/authentication/login/login.view.dart';

class LoginControllerImplementation extends LoginController {
  final AuthService _loginService;

  LoginControllerImplementation({
    required AuthService authService,
    LoginModel? model,
  })  : _loginService = authService,
        super(
          model ??
              const LoginModel(
                hasError: false,
                isLoading: false,
                loginDto: LoginDto(
                  email: null,
                  password: null,
                ),
              ),
        );

  @override
  void setEmail(String value) {
    state = state.copyWith.loginDto(email: value);
  }

  @override
  void setPassword(String value) {
    state = state.copyWith.loginDto(password: value);
  }

  @override
  Future<void> login() async {
    state = state.copyWith(hasError: false, isLoading: true);
    try {
      await _loginService.login(payload: state.loginDto);
      state = state.copyWith(isLoading: false);
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
    }
  }

  @override
  String? validateFormField({required String fieldName}) {
    switch (fieldName) {
      case 'email':
        return state.loginDto.email.isEmail
            ? null
            : "Bitte geben Sie eine gültige Email ein";
      case 'password':
        return state.loginDto.password.isStrongPassword
            ? null
            : 'Passwort muss mindestens 8 Zeichen lang sein und mindestens eine'
                ' Zahl, einen Großbuchstaben und einen Kleinbuchstaben'
                ' enthalten';
      default:
        return null;
    }
  }
}
