// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

// Types Registry
import 'package:flutter_currency_picker/src/currency.dart';
import 'package:flutter_currency_picker/src/list/currency_item_registry.dart';
import 'package:flutter_currency_picker/src/list/currency_selector_item.dart';

// Extension to initialize Object from Type
extension CurrencyTypeExt on Type {
  CurrencySelectorItem? toObject(Currency value) {
    final cb = CurrencyItemRegistry.list[this];
    return cb != null ? cb(value) : null;
  }
}
