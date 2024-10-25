import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boilerplate_may/presentation/counter_screen/controller/counter_screen_controller.dart';
import 'package:riverpod_boilerplate_may/presentation/counter_screen/state/counter_screen_state.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // state object
    var counterScreenStateObj =
        ref.watch(counterScreenStateNotifierProvider) as CounterScreenState;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterScreenStateNotifierProvider.notifier).onIncrement();
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counterScreenStateObj.counter.toString()),
            Text(counterScreenStateObj.name.toString()),
          ],
        ),
      ),
    );
  }
}
