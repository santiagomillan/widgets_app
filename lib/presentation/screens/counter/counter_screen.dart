import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clikCounter = ref.watch(counterProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
        ),
        body: Center(
          child: Text(
            'Valor: $clikCounter',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}
