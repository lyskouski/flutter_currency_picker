# Flutter Currency Picker

[![Test Status](https://github.com/lyskouski/flutter_currency_picker/actions/workflows/test.yml/badge.svg)](https://github.com/lyskouski/flutter_currency_picker/actions/workflows/test.yml)
[![Build Status](https://github.com/lyskouski/flutter_currency_picker/actions/workflows/build.yml/badge.svg)](https://github.com/lyskouski/flutter_currency_picker/actions/workflows/build.yml)

Representation layer of conversion `number` to a currency as `string`. Native 
selector extension for Currency Selector with a dependency injection (list 
representation layer) approach.

## Converter

```dart
// locale 'en_US'
1234.5.toCurrency(code: 'EUR') // 1 234,50 €
1234.5.toCurrency(code: 'EUR', withPattern: false) // €1,234.50 
```

## Currencies Localization

```dart
// Init from context
CurrencyProvider.initFromContext(context);

// [OR] Inject your own
import 'package:flutter_gen/gen_l10n/app_localization_de.dart';
CurrencyDefaults.labels = AppLocalizationsDe();
```

## Selector

![Selector Sample](https://raw.githubusercontent.com/lyskouski/flutter_currency_picker/main/example/selector.png)

## Support (Sponsorship)

Sponsorship would serve as an investment in the continuous evolution and improvement of open-sources projects carried 
out by the `terCAD` team. So, if you'd like to contribute financially towards the efforts, please consider these options:

* [Github Sponsorship](https://github.com/users/lyskouski/sponsorship)
* [Paypal](https://www.paypal.me/terCAD)
* [Patreon](https://www.patreon.com/terCAD)
* [Donorbox](https://donorbox.org/tercad)

Or, [treat me to :coffee:](https://www.buymeacoffee.com/lyskouski).
