// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/flutter_currency_picker.dart';
import 'package:flutter_currency_picker/gen_l10n/app_localization.dart';
import 'package:flutter_currency_picker/src/source/crypto_list.dart';
import 'package:flutter_currency_picker/src/source/currency_list.dart';
import 'package:intl/intl.dart';

abstract class CurrencyProvider {
  // ignore: prefer_collection_literals
  static final _currencies = LinkedHashMap<String, Currency>();

  static void _load(List<Currency> scope) {
    for (final currency in scope) {
      _currencies[currency.code] = currency;
    }
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

  // Get top-preferences
  static List<String>? getTop() =>
      CurrencyDefaults.cache?.getStringList(CurrencyDefaults.cacheName);

  // Add currency to top-preferences
  static void pin(Currency value) => CurrencyDefaults.cache?.setStringList(
        CurrencyDefaults.cacheName,
        [value.code, ...getTop() ?? []],
      );

  // Remove currency from top-preferences
  static void unpin(Currency value) => CurrencyDefaults.cache?.setStringList(
        CurrencyDefaults.cacheName,
        [...getTop() ?? []]..remove(value.code),
      );

  /// Get full list
  // By taking into account localization specifics
  // And pinned list of currencies
  static List<Currency> getAll() {
    init();
    final result = _currencies.values.toList(growable: false);
    if (CurrencyDefaults.defaultLocale?.languageCode == 'de') {
      result.sort((a, b) => a.name.compareTo(b.name));
    }
    final pin = getTop();
    if (pin != null) {
      result.sort((a, b) {
        final ia = pin.indexOf(a.code);
        final ib = pin.indexOf(b.code);
        if (ia == ib) {
          return 0;
        }
        return ia > ib ? -1 : 1;
      });
    }
    return result;
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
