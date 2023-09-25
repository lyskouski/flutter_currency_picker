// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter_currency_picker/src/currency.dart';
import 'package:flutter_currency_picker/src/currency_defaults.dart';
import 'package:flutter_currency_picker/src/currency_formatter.dart';
import 'package:flutter_currency_picker/src/currency_provider.dart';
import 'package:intl/intl.dart';

typedef _FnCallback = NumberFormat Function(Currency? currency, String? locale);

// Extension to convert `double` into `String`
// with defined currency and formatting
extension CurrencyExt on double {
  // Convert double to string with defined Currency
  String _convert(_FnCallback callback,
      {Currency? currency, String? code, bool withPattern = true}) {
    final def = CurrencyDefaults.defaultCurrency;
    if (code != null) {
      currency ??= CurrencyProvider.find(code);
    }
    currency = currency ?? def;
    final locale = CurrencyDefaults.defaultLocale?.toString();
    final NumberFormat formatter = callback(currency, locale);

    final result = formatter.format(this);
    return adjustFormat(
      result,
      locale,
      withPattern ? currency : def,
      formatter.currencySymbol == '',
    );
  }

  // Basic conversion into String (Currency)
  /// Sample:
  ///  `1234.5.toCurrency(code: 'EUR')` => `1 234,50 €`
  /// Sample (locale 'en_US'):
  ///  `1234.5.toCurrency(code: 'EUR', withPattern: false)` => `€1,234.50`
  String toCurrency(
      {Currency? currency, String? code, bool withPattern = true}) {
    fn(Currency? currency, String? locale) => NumberFormat.currency(
          locale: locale,
          symbol: currency?.symbol,
          decimalDigits: currency?.decimalDigits,
          customPattern: generatePattern(
              withPattern ? currency : CurrencyDefaults.defaultCurrency),
        );
    return _convert(fn,
        currency: currency, code: code, withPattern: withPattern);
  }

  // Conversion into String (Currency) with Short Number Notation
  /// Sample:
  ///  `1234.5.toCompactCurrency(code: 'EUR')` => `1K €`
  /// Sample (locale 'en_US'):
  ///  `1234.5.toCompactCurrency(code: 'EUR', withPattern: false)` => `€1K`
  String toCompactCurrency(
      {Currency? currency, String? code, bool withPattern = true}) {
    fn(Currency? currency, String? locale) => NumberFormat.compactCurrency(
          locale: locale,
          symbol: '',
          decimalDigits: currency?.decimalDigits,
        );
    return _convert(fn,
        currency: currency, code: code, withPattern: withPattern);
  }
}
