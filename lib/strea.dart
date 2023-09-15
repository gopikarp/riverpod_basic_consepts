import 'package:riverpod/riverpod.dart';

abstract class WebsocketClient {
  Stream<int> getCounterStream(int start);
}

class FakeWebsocketClient implements WebsocketClient {
  @override
  // Stream<int> getCounterStream() async* {
    // int i = 0;
     Stream<int> getCounterStream([int start = 0]) async* {
    int i = start;
    while (true) {
      await Future.delayed(const Duration(milliseconds: 500));
      yield i++;
    }
  }
}

final websocketClientProvider = Provider<WebsocketClient>(
  (ref) {
    return FakeWebsocketClient();
  },
);
