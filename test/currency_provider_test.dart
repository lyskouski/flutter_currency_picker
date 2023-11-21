// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/src/currency_defaults.dart';
import 'package:flutter_currency_picker/src/currency_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateNiceMocks([MockSpec<SharedPreferences>()])
import 'currency_provider_test.mocks.dart';

void main() {
  group('CurrencyProvider', () {
    setUp(() => CurrencyDefaults.cache = MockSharedPreferences());
    tearDown(() =>
        CurrencyProvider.initFromContext(null, locale: const Locale('en')));

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

    test('initFromContext', () {
      final result = CurrencyProvider.getAll().first;
      expect(result.name, 'United States Dollar');
      CurrencyProvider.initFromContext(null, locale: const Locale('pl'));
      final locale = CurrencyProvider.getAll().first;
      expect(locale.name, 'Dolar amerykański');
    });

    test('pin', () {
      final result = CurrencyProvider.getAll().first;
      expect(result.code, 'USD');

      CurrencyDefaults.defaultLocale = const Locale('de');
      final order = CurrencyProvider.getAll().first;
      expect(order.code, 'AFN');

      CurrencyDefaults.defaultLocale = const Locale('en');
      when(CurrencyDefaults.cache!.getStringList(CurrencyDefaults.cacheName))
          .thenReturn(['PLN', 'EUR']);
      final pin = CurrencyProvider.getAll();
      expect(pin[0].code, 'PLN');
      expect(pin[1].code, 'EUR');
      expect(pin[2].code, 'USD');
    });
  });
}
