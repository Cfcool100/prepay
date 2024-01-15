import 'package:formz/formz.dart';
import 'package:propay/src/core/extension.dart';

enum PhoneNumberFormzError { empty }

class PhoneNumberFormz extends FormzInput<String, PhoneNumberFormzError> {
  const PhoneNumberFormz.pure() : super.pure('');

  const PhoneNumberFormz.dirty({String value = ''}) : super.dirty(value);

  @override
  PhoneNumberFormzError? validator(String value) {
    return value.trim().isNotEmpty && value.trim().isValidContact()
        ? null
        : PhoneNumberFormzError.empty;
  }
}
