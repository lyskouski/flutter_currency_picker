// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/src/currency.dart';

// Override search pattern for `CurrencySelectorItem`
typedef CurrencySearchPattern = String Function(Currency input);

// Override `Currency`-view (Widget) for `SearchAnchor`
typedef CurrencyListView = Widget Function(
  Currency input,
  BuildContext context,
);

// Extend Selector Widget for Currency
class CurrencySelectorItem {
  // Currency definition
  Currency item;
  // Override search pattern
  CurrencySearchPattern? searchPattern;
  // Override `Currency`-view (Widget) for `SearchAnchor`
  CurrencyListView? listView;

  // Currency Item Constructor
  CurrencySelectorItem(
    this.item, {
    this.searchPattern,
    this.listView,
  });

  factory CurrencySelectorItem.fromCurrency(Currency item) =>
      CurrencySelectorItem(item);

  // Identifier as an outcome from Selector
  String get id => item.code;

  @override
  // To use object as a key for `Map`, `Set`, and override `==`-operation
  int get hashCode => int.parse(id.codeUnits.join(''));

  // Search pattern
  String get name => searchPattern != null
      ? searchPattern!(item)
      : '${item.symbol} - ${item.name} (${item.code})';

  @override
  // Convert Object to String
  String toString() => name;

  // Compare Object with a search pattern
  bool match(String search) =>
      name.toLowerCase().contains(search.toLowerCase());

  @override
  // Equal comparison
  bool operator ==(Object other) =>
      other is CurrencySelectorItem && equal(other.id);

  // Compare `id` with taken value
  bool equal(String val) => id == val;

  // Representation layer for selector
  Widget? build(BuildContext context) {
    if (listView != null) {
      return listView!(item, context);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        SizedBox(
          width: 32,
          child: item.flag != null ? Text(item.flag!) : null,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(item.code),
              Text(item.name),
            ],
          ),
        ),
        SizedBox(
          width: 32,
          child: Text(item.symbol),
        ),
      ],
    );
  }
}
