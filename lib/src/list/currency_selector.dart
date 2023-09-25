// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/src/currency_provider.dart';
import 'package:flutter_currency_picker/src/extension/currency_type_ext.dart';
import 'package:flutter_currency_picker/src/list/currency_selector_item.dart';

// Selector deviations
enum CurrencySelectorType {
  searchAnchor,
  searchAnchorMin,
  searchAnchorBar,
}

// Wrapper on top of basic `SearchAnchor`
class CurrencySelector<K extends CurrencySelectorItem> extends StatefulWidget {
  // Selected value
  final String? value;
  // Callback for changed value
  final Function update;
  // Hint text
  final String? hintText;
  // Hint style
  final TextStyle? hintStyle;
  // Header hint style
  final TextStyle? headerHintStyle;
  // Container background
  final Color? fieldBackground;
  // Selector representation
  final CurrencySelectorType searchType;

  // SearchAnchor
  const CurrencySelector({
    super.key,
    required this.update,
    this.value,
    this.hintText,
    this.hintStyle,
    this.headerHintStyle,
    this.fieldBackground,
  }) : searchType = CurrencySelectorType.searchAnchor;

  // SearchAnchor(isFullScreen: false)
  const CurrencySelector.min({
    super.key,
    required this.update,
    this.value,
    this.hintText,
    this.hintStyle,
    this.headerHintStyle,
    this.fieldBackground,
  }) : searchType = CurrencySelectorType.searchAnchorMin;

  // SearchAnchor.bar
  const CurrencySelector.bar({
    super.key,
    required this.update,
    this.value,
    this.hintText,
    this.hintStyle,
    this.headerHintStyle,
    this.fieldBackground,
  }) : searchType = CurrencySelectorType.searchAnchorBar;

  @override
  // ignore: no_logic_in_create_state
  CurrencySelectorState createState() => switch (searchType) {
        CurrencySelectorType.searchAnchorBar =>
          CurrencySelectorBarState<CurrencySelector, K>(),
        CurrencySelectorType.searchAnchorMin =>
          CurrencySelectorMinState<CurrencySelector, K>(),
        _ => CurrencySelectorState<CurrencySelector, K>(),
      };
}

// Plot `SearchAnchor.bar`
class CurrencySelectorBarState<T extends CurrencySelector,
    K extends CurrencySelectorItem> extends CurrencySelectorState<T, K> {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor.bar(
      isFullScreen: true,
      searchController: controller,
      barHintText: widget.hintText,
      barHintStyle: MaterialStateProperty.all(widget.headerHintStyle),
      onTap: onTap,
      suggestionsBuilder: buildList,
    );
  }
}

// Plot `SearchAnchor(isFullScreen: false)`
class CurrencySelectorMinState<T extends CurrencySelector,
    K extends CurrencySelectorItem> extends CurrencySelectorState<T, K> {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      isFullScreen: false,
      searchController: controller,
      viewHintText: widget.hintText,
      headerHintStyle: widget.headerHintStyle,
      builder: buildContainer,
      suggestionsBuilder: buildList,
    );
  }
}

// Plot `SearchAnchor`
class CurrencySelectorState<T extends CurrencySelector,
    K extends CurrencySelectorItem> extends State<T> {
  // Search controller
  final controller = SearchController();
  // CurrencySelectorItem
  late final K? item;
  // List<CurrencySelectorItem<Currency>>
  final list =
      CurrencyProvider.getAll().map((e) => K.toObject(e)).cast<K>().toList();

  @override
  void initState() {
    item = widget.value != null
        ? list.where((e) => e.equal(widget.value!)).firstOrNull
        : null;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // Trigger callback for the changed state of selector
  void onChange(K value) {
    widget.update(value.id);
    controller.closeView(null);
  }

  // Trigger callback for the changed state of selector
  void onTap() {
    if (!controller.isOpen) {
      controller.openView();
    }
  }

  // Build selected
  Widget buildContainer(BuildContext context, SearchController controller) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: widget.fieldBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: FractionalTranslation(
                  translation: const Offset(0, 0.5),
                  child: Text(
                    item?.toString() ?? widget.hintText ?? '...',
                    style: widget.hintStyle,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_drop_down, color: widget.hintStyle?.color),
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }

  // Generate list of items for selection
  FutureOr<Iterable<Widget>> buildList(
      BuildContext context, SearchController controller) {
    return list.where((e) => e.match(controller.text)).map(
          (e) => ListTile(
            title: e.build(context),
            onTap: () => onChange(e),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      isFullScreen: true,
      searchController: controller,
      viewHintText: widget.hintText,
      headerHintStyle: widget.headerHintStyle,
      builder: buildContainer,
      suggestionsBuilder: buildList,
    );
  }
}
