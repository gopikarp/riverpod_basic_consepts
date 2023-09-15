import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/homepage.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final String value = ref.watch(counterProvider);
    print('rebuild.......');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      // home: Scaffold(
      //   appBar: AppBar(title: const Text('Example')),
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         // Text(value),
      //         Text('my data'),
      //         FloatingActionButton(onPressed: () {
      //           print('pressed');
      //         })
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
