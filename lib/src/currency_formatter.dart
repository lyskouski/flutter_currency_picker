// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter_currency_picker/flutter_currency_picker.dart';
import 'package:intl/intl.dart';

// Prepare pattern for NumberFormat
String? generatePattern(Currency? currency) {
  if (currency == null) {
    return null;
  }
  final pattern = [
    if (currency.symbolOnLeft) '¤',
    if (currency.symbolOnLeft && currency.hasSpace) "' '",
    '#,##0',
    if (currency.decimalDigits > 0) '.',
    ...List.filled(currency.decimalDigits, '0'),
    if (!currency.symbolOnLeft && currency.hasSpace) "' '",
    if (!currency.symbolOnLeft) '¤',
  ];
  return pattern.join('');
}

// Adjust basic formatting to the expected from Currency definition
String adjustFormat(String data, String? locale, Currency? currency,
    [bool addSymbol = false]) {
  if (currency != null) {
    final symbols = NumberFormat.currency(locale: locale).symbols;
    const tmp = '|'; // for the case of `.` to `,` conversion
    data = data
        .replaceAll(symbols.DECIMAL_SEP, tmp)
        .replaceAll(symbols.GROUP_SEP, currency.thousandsSeparator)
        .replaceAll(tmp, currency.decimalSeparator);
    if (addSymbol) {
      data = [
        if (currency.symbolOnLeft) currency.symbol,
        if (currency.symbolOnLeft && currency.hasSpace) ' ',
        data,
        if (!currency.symbolOnLeft && currency.hasSpace) ' ',
        if (!currency.symbolOnLeft) currency.symbol,
      ].join('');
    }
  }
  return data;
}
