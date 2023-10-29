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
  // Highlight odd Tiles with defined color
  final Color? tileColor;
  // Styling for the chosen value
  final TextStyle? textStyle;
  // Hint style
  final TextStyle? hintStyle;
  // Header hint style
  final TextStyle? headerHintStyle;
  // Container background
  final Color? fieldBackground;
  // Selector representation
  final CurrencySelectorType searchType;
  // Indentation for selector
  final EdgeInsets? indent;

  // SearchAnchor
  const CurrencySelector({
    super.key,
    required this.update,
    this.value,
    this.textStyle,
    this.tileColor,
    this.hintText,
    this.hintStyle,
    this.headerHintStyle,
    this.fieldBackground,
    this.indent,
  }) : searchType = CurrencySelectorType.searchAnchor;

  // SearchAnchor(isFullScreen: false)
  const CurrencySelector.min({
    super.key,
    required this.update,
    this.value,
    this.textStyle,
    this.tileColor,
    this.hintText,
    this.hintStyle,
    this.headerHintStyle,
    this.fieldBackground,
    this.indent,
  }) : searchType = CurrencySelectorType.searchAnchorMin;

  // SearchAnchor.bar
  const CurrencySelector.bar({
    super.key,
    required this.update,
    this.value,
    this.textStyle,
    this.tileColor,
    this.hintText,
    this.hintStyle,
    this.headerHintStyle,
    this.fieldBackground,
    this.indent,
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
  // List<CurrencySelectorItem<Currency>>
  List<K> get list =>
      CurrencyProvider.getAll().map((e) => K.toObject(e)).cast<K>().toList();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // Trigger callback for the changed state of selector
  void onChange(K value) {
    widget.update(value.item);
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
    final item = widget.value != null
        ? list.where((e) => e.equal(widget.value!)).firstOrNull
        : null;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: widget.fieldBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: widget.indent ?? EdgeInsets.zero,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item != null ? item.toString() : widget.hintText ?? '...',
                    style: widget.value != null
                        ? widget.textStyle
                        : widget.hintStyle,
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
    final result = <Widget>[];
    list
        .where((e) => e.match(controller.text))
        .toList()
        .asMap()
        .forEach((index, e) {
      result.add(ListTile(
        title: e.build(context),
        tileColor: index % 2 == 0 ? widget.tileColor?.withOpacity(0.05) : null,
        hoverColor: widget.tileColor?.withOpacity(0.15),
        onTap: () => onChange(e),
      ));
    });
    return result;
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
