// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/gen_l10n/app_localization.dart';
import 'package:flutter_currency_picker/gen_l10n/app_localization_en.dart';
import 'package:flutter_currency_picker/src/currency.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Accessor to external components
abstract class CurrencyDefaults {
  // Default currency (can be taken from user preferences)
  static Currency? defaultCurrency;
  // Default locale
  static Locale? defaultLocale;
  // Localization accessor
  static AppLocalizations labels = AppLocalizationsEn();
  // Cache to operate with pinned currencies
  static SharedPreferences? cache;
  // Cache identifier for pinned currencies
  static String cacheName = '_currencies_pin';
}
