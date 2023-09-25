// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter_currency_picker/src/currency_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CurrencyProvider', () {
    group('findByCode', () {
      final testCases = [
        (code: null, result: null),
        (code: 'USD', result: 'USD'),
        (code: 'ABC', result: null),
      ];

      for (var v in testCases) {
        test('$v', () {
          expect(CurrencyProvider.find(v.code)?.code, v.result);
        });
      }
    });

    test('getAll', () {
      final result = CurrencyProvider.getAll();
      expect(result.isNotEmpty, true);
    });
  });
}
