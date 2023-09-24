// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/flutter_currency_picker.dart';
import 'package:flutter_currency_picker/src/currency_defaults.dart';
import 'package:flutter_currency_picker/src/source/crypto_list.dart';
import 'package:flutter_currency_picker/src/source/currency_list.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class CurrencyProvider {
  static final _currencies = HashMap<String?, Currency>();
  static final List<Currency> _list = [];

  static void _load(List<Currency> scope) {
    for (final currency in scope) {
      _list.add(currency); //, flag: _toEmojiFlag(currency.flag)));
      _currencies[currency.code] = currency;
    }
  }

  // Return Emoji Unicode (Flag)
  // See: https://en.wikipedia.org/wiki/Regional_Indicator_Symbol
  static String? toEmojiFlag(String? flag) {
    if (flag == null) {
      return null;
    }
    // 0x41 - 'A' symbol, 0x1F1E6 - Regional Indicator
    const shift = -0x41 + 0x1F1E6;
    return String.fromCharCode(flag.codeUnitAt(0) + shift) +
        String.fromCharCode(flag.codeUnitAt(1) + shift);
  }

  // List of properties to Currency
  static Currency _convertCrypto(List<dynamic> data) {
    return (
      flag: null,
      decimalDigits: 6,
      thousandsSeparator:
          CurrencyDefaults.defaultCurrency?.thousandsSeparator ?? ',',
      decimalSeparator:
          CurrencyDefaults.defaultCurrency?.decimalSeparator ?? '.',
      hasSpace: true,
      symbolOnLeft: true,
      name: data.first,
      code: data.last,
      symbol: data.last,
    );
  }

  // Bind labels localization from Context
  static void initFromContext(BuildContext context,
      {bool classic = true, bool crypto = true}) {
    CurrencyDefaults.defaultLocale = Localizations.localeOf(context);
    CurrencyDefaults.labels = AppLocalizations.of(context)!;
    _currencies.clear();
    init(
      locale: CurrencyDefaults.defaultLocale,
      classic: classic,
      crypto: crypto,
    );
  }

  // Initialization by Locale and list assertion
  static void init({Locale? locale, bool classic = true, bool crypto = true}) {
    if (_currencies.isNotEmpty) {
      return;
    }
    CurrencyDefaults.defaultLocale ??= locale ?? const Locale('en', 'US');
    if (classic) {
      _load(currencyList);
    }
    if (crypto) {
      _load(cryptoList.map(_convertCrypto).toList());
    }
    CurrencyDefaults.defaultCurrency ??=
        identify(CurrencyDefaults.defaultLocale!);
  }

  // Get full list
  static List<Currency> getAll() {
    init();
    return _list;
  }

  // Find Currency from its code
  static Currency? find(String? code) {
    init();
    return _currencies[code?.toUpperCase()];
  }

  // Identify currency from locale
  static Currency? identify(Locale locale) {
    final format = NumberFormat.simpleCurrency(locale: locale.toString());
    return find(format.currencyName);
  }
}
