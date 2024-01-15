import 'package:formz/formz.dart';
import 'package:propay/src/core/extension.dart';

enum PasswordFormzError { empty }

class PasswordFormz extends FormzInput<String, PasswordFormzError> {
  const PasswordFormz.pure() : super.pure('');

  const PasswordFormz.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordFormzError? validator(String value) {
    return value.trim().isNotEmpty && value.trim().isValidPassword()
        ? null
        : PasswordFormzError.empty;
  }
}
