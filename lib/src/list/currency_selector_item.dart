// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:dart_intl_search/dart_intl_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/src/currency.dart';
import 'package:flutter_currency_picker/src/currency_defaults.dart';
import 'package:flutter_currency_picker/src/currency_provider.dart';

// Override selected item' view layer for `SearchAnchor`
typedef CurrencyViewPattern = String Function(Currency input);

// Override `Currency`-view (Widget) for `SearchAnchor`
typedef CurrencyListView = Widget Function(
  Currency input,
  BuildContext context,
);

// Extend Selector Widget for Currency
class CurrencySelectorItem {
  // Currency definition
  Currency item;
  // Override view state
  CurrencyViewPattern? selectionView;
  // Override `Currency`-view (Widget) for `SearchAnchor`
  CurrencyListView? listView;

  // Currency Item Constructor
  CurrencySelectorItem(
    this.item, {
    this.selectionView,
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
  String get name => '${item.symbol} - ${item.name} (${item.code})';

  @override
  // Convert Object to String
  String toString() => selectionView != null ? selectionView!(item) : name;

  // Compare Object with a search pattern
  bool match(String search) => search.isPartOf(
      name, CurrencyDefaults.defaultLocale ?? const Locale('en'));

  @override
  // Equal comparison
  bool operator ==(Object other) =>
      other is CurrencySelectorItem && equal(other.id);

  // Compare `id` with taken value
  bool equal(String val) => id == val;

  void manageState(BuildContext context, Currency item) {
    final isPinned = CurrencyProvider.isPinned(item);
    if (isPinned) {
      CurrencyProvider.unpin(item);
    } else {
      CurrencyProvider.pin(item);
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(isPinned ? Icons.star_border : Icons.star),
            const SizedBox(width: 4),
            Text(item.name),
          ],
        ),
      ),
    );
  }

  // Representation layer for selector
  Widget? build(BuildContext context) {
    if (listView != null) {
      return listView!(item, context);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 42,
          child: item.flag != null ? Text(item.flag!) : null,
        ),
        Expanded(
          child: Column(
            children: [
              Align(alignment: Alignment.topLeft, child: Text(item.code)),
              Align(alignment: Alignment.topLeft, child: Text(item.name)),
            ],
          ),
        ),
        SizedBox(
          width: 32,
          child: Center(child: Text(item.symbol)),
        ),
        SizedBox(
          width: 12,
          child: InkWell(
            onTap: () => manageState(context, item),
            child: Icon(
              CurrencyProvider.isPinned(item) ? Icons.star : Icons.star_border,
              color:
                  Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
            ),
          ),
        ),
      ],
    );
  }
}
