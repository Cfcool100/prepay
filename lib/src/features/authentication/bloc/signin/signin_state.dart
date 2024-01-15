import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:propay/src/core/models/password_formz.dart';
import 'package:propay/src/core/models/phone_number_formz.dart';

// class SignInBloc extends Bloc<> {

// }

// sealed class SignInState {}

class FormSignState {
  FormSignState({
    required this.isValid,
    required this.status,
    required this.tel,
    required this.password,
  });

  final PhoneNumberFormz tel;
  final PasswordFormz password;
  final FormzSubmissionStatus status; //
  final bool isValid;
}
