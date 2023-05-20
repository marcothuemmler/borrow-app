import 'package:borrow_app/views/authentication/auth.model.dart';

abstract class AuthService {
  Future<void> signup({required SignupDto payload});
  Future<bool> login({required LoginDto payload});
  Future<void> logout();
}
