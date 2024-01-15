import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:propay/src/core/models/password_formz.dart';
import 'package:propay/src/core/models/phone_number_formz.dart';
import 'package:propay/src/features/authentication/bloc/signin/signin_event.dart';
import 'package:propay/src/features/authentication/bloc/signin/signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, FormSignState> {
  SignInBloc()
      : super(FormSignState(
            isValid: false,
            status: FormzSubmissionStatus.initial,
            tel: const PhoneNumberFormz.pure(),
            password: const PasswordFormz.pure())) {
    // state
    // 07 88 39 21 31
    on<PhoneNumberChangedEvent>((event, emit) {
      // event.tel // 07 88 39 21 31
      // Recuperation de la valeur de l'event

      final tel = PhoneNumberFormz.dirty(value: event.tel);

      final newState = FormSignState(
          isValid: Formz.validate([tel, state.password]), //
          status: FormzSubmissionStatus.initial,
          tel: tel,
          password: PasswordFormz.dirty(value: state.password.value));

      emit(newState);

      // Validation
    });
    on<PasswordChangedEvent>((event, emit) {
      final pwd = PasswordFormz.dirty(value: event.password);

      final newState = FormSignState(
          isValid: Formz.validate([pwd, state.tel]), //
          status: FormzSubmissionStatus.initial,
          tel: PhoneNumberFormz.dirty(value: state.tel.value),
          password: pwd);

      emit(newState);
    });
    on<SubmitEvent>((event, emit) {
      if (state.isValid) {
        /// Formilaire est bon
      }
    });
  }
}
