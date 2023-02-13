import 'package:counter_riverpod/counter_notifier.dart';
import 'package:counter_riverpod/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterPage extends HookConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CounterState counterState = ref.watch(counterProvider);
    final CounterNotifier counterNotifier = ref.watch(counterProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Count: ${counterState.value}'),
            ),
            ElevatedButton(
              onPressed: () => counterNotifier.increase(),
              child: const Text('Increase'),
            ),
            ElevatedButton(
              onPressed: () => counterNotifier.decrease(),
              child: const Text('Decrease'),
            )
          ],
        ),
      ),
    );
  }
}
