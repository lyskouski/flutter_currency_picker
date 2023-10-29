// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/src/currency_defaults.dart';
import 'package:flutter_currency_picker/src/currency_provider.dart';
import 'package:flutter_currency_picker/src/extension/currency_ext.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateNiceMocks([MockSpec<SharedPreferences>()])
import 'currency_ext_test.mocks.dart';

void main() {
  group('CurrencyExt', () {
    setUp(() {
      CurrencyDefaults.cache = MockSharedPreferences();
      CurrencyDefaults.defaultCurrency = (
        code: 'USD',
        name: 'United States Dollar',
        symbol: '\$',
        flag: 'USD',
        decimalDigits: 2,
        thousandsSeparator: ',',
        decimalSeparator: '.',
        hasSpace: false,
        symbolOnLeft: true,
      );
      CurrencyDefaults.defaultLocale = const Locale('en', 'US');
    });

    group('toCurrency', () {
      final testCases = [
        (input: 0.0, code: 'EUR', result: '0,00 €'),
        (input: 1000.0, code: 'EUR', result: '1 000,00 €'),
        (input: 0.0, code: 'USD', result: '\$0.00'),
        (input: 1000.0, code: 'USD', result: '\$1,000.00'),
        (input: 1000.0, code: 'BTC', result: 'BTC 1,000.000000'),
      ];
      for (var v in testCases) {
        test('$v', () {
          expect(v.input.toCurrency(code: v.code), v.result);
        });
      }
    });

    group('toCurrency(withPattern = false)', () {
      final testCases = [
        (input: 0.0, code: 'EUR', result: '€0.00'),
        (input: 1000.0, code: 'EUR', result: '€1,000.00'),
        (input: 0.0, code: 'USD', result: '\$0.00'),
        (input: 1000.0, code: 'USD', result: '\$1,000.00'),
        (input: 1000.0, code: 'BTC', result: 'BTC1,000.000000'),
      ];
      for (var v in testCases) {
        test('$v', () {
          final currency = CurrencyProvider.find(v.code);
          expect(
            v.input.toCurrency(currency: currency, withPattern: false),
            v.result,
          );
        });
      }
    });

    group('toCompactCurrency', () {
      final testCases = [
        (input: 0.0, code: 'EUR', result: '0,00 €'),
        (input: 1000.0, code: 'EUR', result: '1K €'),
        (input: 0.0, code: 'USD', result: '\$0.00'),
        (input: 1000.0, code: 'USD', result: '\$1K'),
        (input: 1000000.0, code: 'BTC', result: 'BTC 1M'),
      ];
      for (var v in testCases) {
        test('$v', () {
          expect(v.input.toCompactCurrency(code: v.code), v.result);
        });
      }
    });
  });
}
