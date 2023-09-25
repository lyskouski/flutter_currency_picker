// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter_currency_picker/src/currency.dart';
import 'package:flutter_currency_picker/src/currency_defaults.dart';
import 'package:flutter_currency_picker/src/currency_formatter.dart';
import 'package:intl/intl.dart';

extension CurrencyExt on double {
  String toCurrency([Currency? currency, bool withPattern = true]) {
    final def = CurrencyDefaults.defaultCurrency;
    currency = currency ?? def;
    final locale = CurrencyDefaults.defaultLocale?.toString();
    final NumberFormat formatter = NumberFormat.currency(
      locale: locale,
      symbol: currency?.symbol,
      decimalDigits: currency?.decimalDigits,
      customPattern: generatePattern(withPattern ? currency : def),
    );
    final result = formatter.format(this);
    return adjustFormat(result, locale, withPattern ? currency : def);
  }

  String toCompactCurrency([Currency? currency, bool withPattern = true]) {
    final def = CurrencyDefaults.defaultCurrency;
    currency = currency ?? def;
    final locale = CurrencyDefaults.defaultLocale?.toString();
    final NumberFormat formatter = NumberFormat.compactCurrency(
      locale: locale,
      symbol: '',
      decimalDigits: currency?.decimalDigits,
    );
    final result = formatter.format(this);
    return adjustFormat(result, locale, withPattern ? currency : def, true);
  }
}
