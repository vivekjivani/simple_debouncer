import 'package:flutter_test/flutter_test.dart';

import 'package:simple_debouncer/simple_debouncer.dart';

void main() {
  test('Debouncer test', () async {
    final debouncer = Debouncer(milliseconds: 100);
    bool actionCalled = false;

    debouncer.run(() {
      actionCalled = true;
    });

    await Future.delayed(Duration(milliseconds: 150));
    expect(actionCalled, true);
  });
}
