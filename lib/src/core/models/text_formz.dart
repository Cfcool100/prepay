import 'package:formz/formz.dart';

enum TextFormzError { empty }

class TextFormz extends FormzInput<String, TextFormzError> {
  const TextFormz.pure() : super.pure('');

  const TextFormz.dirty({String value = ''}) : super.dirty(value);

  @override
  TextFormzError? validator(String value) {
    return value.trim().isEmpty && value.trim().length < 3
        ? TextFormzError.empty
        : null;
  }
}
