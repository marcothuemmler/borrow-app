import "package:borrow_app/views/authentication/auth.model.dart";
import "package:borrow_app/views/authentication/auth.service.dart";
import "package:borrow_app/views/authentication/signup/signup.view.dart";

class SignupControllerImplementation extends SignupController {
  final AuthService _signupService;

  SignupControllerImplementation({
    required AuthService authService,
    SignupModel? model,
  })  : _signupService = authService,
        super(
          model ??
              const SignupModel(
                hasError: false,
                isLoading: false,
                signupDto: SignupDto(
                  email: null,
                  username: null,
                  password: null,
                ),
              ),
        );

  @override
  void setEmail(String value) {
    state = state.copyWith.signupDto(email: value);
  }

  @override
  void setPassword(String value) {
    state = state.copyWith.signupDto(password: value);
  }

  @override
  void setUsername(String value) {
    state = state.copyWith.signupDto(username: value);
  }

  @override
  Future<bool> signup() async {
    state = state.copyWith(isLoading: true, hasError: false);
    try {
      await _signupService.signup(payload: state.signupDto);
      state = state.copyWith(isLoading: false);
      return true;
    } catch (error) {
      state = state.copyWith(isLoading: false, hasError: true);
      return false;
    }
  }
}
