import 'package:riverpod/riverpod.dart';

// final helloWorldProvider = Provider((ref) => 'sdf'); //read-only data
// final counterProvider = StateProvider((resf) =>2); //modify - increment the counter when the user presses a button,
final counterProvider = StateProvider.autoDispose((ref) => 0); // to dispose  user to always start counting from zero




final countapp = StateProvider((ref) => 'hello baby');
