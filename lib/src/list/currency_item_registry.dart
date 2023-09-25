// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter_currency_picker/src/list/currency_selector_item.dart';

// Interfaces Registry
abstract class CurrencyItemRegistry {
  // List of available Type conversions
  /// Sample: T.toObject(Currency(...));
  static Map<Type, Function> list = {
    CurrencySelectorItem: CurrencySelectorItem.fromCurrency,
  };
}
