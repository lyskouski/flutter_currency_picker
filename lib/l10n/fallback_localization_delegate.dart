// Source: https://stackoverflow.com/questions/57902361/

import 'package:flutter/material.dart';

class FallbackLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  static get delegate => FallbackLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      const DefaultMaterialLocalizations();

  @override
  bool shouldReload(old) => false;
}
