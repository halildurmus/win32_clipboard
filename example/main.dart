import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  print('Clipboard has ${Clipboard.numberOfFormats} format(s)');
  for (final format in Clipboard.formats) {
    print('- $format');
  }

  print('Clipboard is ${Clipboard.isEmpty ? 'empty' : 'not empty'}.');

  if (Clipboard.hasText) {
    print('Clipboard text: ${Clipboard.getText()}');
  }

  if (Clipboard.setText('Hello, world!')) {
    print('Clipboard now contains: ${Clipboard.getText()}');
  }

  if (Clipboard.clear()) {
    print('Clipboard contents cleared successfully.');
  }
}
