import 'package:bloc/bloc.dart';

class ToggleFormBloc extends Cubit<bool> {
  ToggleFormBloc() : super(false); // l'etat initial de notre bloc

  void toggleForm() => emit(!state);
}
