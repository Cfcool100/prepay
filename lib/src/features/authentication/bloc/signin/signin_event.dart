import 'package:bloc/bloc.dart';

sealed class SignInEvent {}

class PhoneNumberChangedEvent extends SignInEvent {
  final String tel;
  PhoneNumberChangedEvent(this.tel);
}

class PasswordChangedEvent extends SignInEvent {
  final String password;
  PasswordChangedEvent(this.password);
}

class SubmitEvent extends SignInEvent {}
