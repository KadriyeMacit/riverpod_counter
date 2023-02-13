import 'package:counter_riverpod/counter_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider =
    StateNotifierProvider.autoDispose<CounterNotifier, CounterState>(
  (_) => CounterNotifier(),
);

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(CounterState());

  void increase() => state = state.copyWith(count: state.value + 1);
  void decrease() => state = state.copyWith(count: state.value - 1);
}
