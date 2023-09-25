// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/gen_l10n/app_localization.dart';
import 'package:flutter_currency_picker/gen_l10n/app_localization_en.dart';
import 'package:flutter_currency_picker/src/currency.dart';

abstract class CurrencyDefaults {
  static Currency? defaultCurrency;
  static Locale? defaultLocale;
  static AppLocalizations labels = AppLocalizationsEn();
}
