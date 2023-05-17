extension IsStrongPassword on String {
  _isStrongPassword() {
    //
    // final strongPasswordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    final strongPasswordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    return strongPasswordRegex.hasMatch(this);
  }

  bool get isStrongPassword => _isStrongPassword();
}
