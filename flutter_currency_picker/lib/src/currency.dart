// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

// Currency Structure
typedef Currency = ({
  // Unified code
  String code,
  // Name
  String name,
  // Currency symbol
  String symbol,
  // `true` for the left position of the symbol
  bool symbolOnLeft,
  // Regional Indicator Symbol (Flag, Emoji Unicode)
  String? flag,
  // Decimal digits
  int decimalDigits,
  // Decimal separator
  String decimalSeparator,
  // Thousands separator
  String thousandsSeparator,
  // True if symbol has space with amount
  bool hasSpace,
});
