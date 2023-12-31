import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/riverpo.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.listen(counterProvider, (previous, next) {
    //     if (next >= 5) {
    //       showDialog(
    //         context: context,
    //         builder: (context) {
    //           return AlertDialog(
    //             title: Text('Warning'),
    //             content:
    //                 Text('Counter dangerously high. Consider resetting it.'),
    //             actions: [
    //               TextButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pop();
    //                 },
    //                 child: Text('OK'),
    //               )
    //             ],
    //           );
    //         },
    //       );
    //     }

    // });

    final AsyncValue<int> counter =
        ref.watch(counterProvider(5)); //it will count from 5

    // final int counter = ref.watch(counterProvider);
    final String aa = ref.watch(countapp); //by me

    print('counter rebuild.......');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(
                  counterProvider); //resesat the app without pressing back also use      ref.refresh
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              // counter.toString(),
              counter
                  .when(
                      data: (int value) => value,
                      error: (Object e, _) => e,
                      // While we're waiting for the first counter value to arrive
                      // we want the text to display 2.
                      loading: () => 2)
                  .toString(),
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              aa,
              style: Theme.of(context).textTheme.displayMedium,
            ), //by me
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     ref.read(counterProvider.notifier).state++;
      //     print('pressed.......');
      //   },
      // ),
    );
  }
}
