import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boilerplate_may/presentation/counter_screen/state/counter_screen_state.dart';

final counterScreenStateNotifierProvider =
    StateNotifierProvider((ref) => CounterScreenStateNotifier());

class CounterScreenStateNotifier extends StateNotifier<CounterScreenState> {
  CounterScreenStateNotifier()
      : super(CounterScreenState(
            counter: 10, isLoading: false, name: "shihab", course: "flutter"));

  onIncrement() {
    state = state.copyWith(counter: ++state.counter);
  }
}
