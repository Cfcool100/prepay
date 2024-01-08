/// Permet de creer l'evenement Counter
/// // la classe de base
sealed class CounterEvent {}
// abstract  class CounterEvent {}

// L'action que je veut effectuer
final class CounterIncrementWhenClickBtn extends CounterEvent {}

final class CounterDecrementWhenClickBtn extends CounterEvent {}
