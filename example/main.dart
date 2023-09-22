// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  print('Clipboard has ${Clipboard.numberOfFormats} format(s)');
  for (final format in Clipboard.formats) {
    print('- $format');
  }
  print('Clipboard has text: ${Clipboard.hasText}');
  print('Clipboard is empty: ${Clipboard.isEmpty}');
  print('Clipboard text: ${Clipboard.getText()}');
  final result = Clipboard.setText('Hello, world!');
  if (result) {
    print('Clipboard text set to "${Clipboard.getText()}"');
  }
}