import 'package:borrow_app/views/authentication/auth.model.dart';

abstract class AuthService {
  Future<void> signup({required SignupDto payload});
  Future<void> login({required LoginDto payload});
  Future<void> logout();
}
