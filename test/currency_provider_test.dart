// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/flutter_currency_picker.dart';
import 'package:flutter_currency_picker/src/currency_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateNiceMocks([MockSpec<SharedPreferences>()])
import 'currency_provider_test.mocks.dart';

void main() {
  setUp(() => CurrencyDefaults.cache = MockSharedPreferences());

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

    test('pin', () {
      final result = CurrencyProvider.getAll().first;
      expect(result.code, 'USD');

      CurrencyDefaults.defaultLocale = const Locale('de');
      final order = CurrencyProvider.getAll().first;
      expect(order.code, 'AFN');

      when(CurrencyDefaults.cache!.getStringList(CurrencyDefaults.cacheName))
          .thenReturn(['PLN']);
      final pin = CurrencyProvider.getAll().first;
      expect(pin.code, 'PLN');
    });
  });
}
