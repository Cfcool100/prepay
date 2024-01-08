import 'package:bloc/bloc.dart';
import 'package:propay/src/features/counter/bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    // Etat de mon bloc commence par 0

    on<CounterEvent>((event, emit) {
      // state => qui representate l'etat actuelle
      // initial 0
      // initial 1
      if (event is CounterIncrementWhenClickBtn) {
        emit(state + 1); // Mettre à jour l'etat actuelle
        print(state);
      } else if (event is CounterDecrementWhenClickBtn) {
        emit(state - 1);
        print(state);
      }
    });
  }
}
