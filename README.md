# Simple Debouncer

A simple debouncer utility for Flutter.

## Usage

```dart
import 'package:simple_debouncer/simple_debouncer.dart';

void main() {
  final debouncer = Debouncer(milliseconds: 500);

  // Example usage
  debouncer.run(() {
    print('This will only print once if called multiple times within 500ms');
  });
}
```
