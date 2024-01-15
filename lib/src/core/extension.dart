extension StringText on String {
  bool isValidPassword() {
    return RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$',
    ).hasMatch(this);
  }

    bool isValidContact() {
    return RegExp(
      r'^(07|05|01)[0-9][0-9]{7}$',
    ).hasMatch(this);
  }
}
