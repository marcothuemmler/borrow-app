import "package:email_validator/email_validator.dart";

extension IsStrongPassword on String? {
  bool get isStrongPassword {
    // final strongPasswordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    final RegExp strongPasswordRegex =
        RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$");
    return this is String && strongPasswordRegex.hasMatch(this!);
  }
}

extension IsEmail on String? {
  bool get isEmail => this is String && EmailValidator.validate(this!);
}

extension IsValidUsername on String? {
  bool get isValidUsername => this is String && this!.length > 2;
}
