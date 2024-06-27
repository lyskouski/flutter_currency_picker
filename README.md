# Flutter Currency Picker

[![Test Status](https://github.com/lyskouski/flutter_currency_picker/actions/workflows/test.yml/badge.svg)](https://github.com/lyskouski/flutter_currency_picker/actions/workflows/test.yml)
[![Build Status](https://github.com/lyskouski/flutter_currency_picker/actions/workflows/build.yml/badge.svg)](https://github.com/lyskouski/flutter_currency_picker/actions/workflows/build.yml)
<a href="https://www.buymeacoffee.com/lyskouski"><img height="20" src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=lyskouski&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff" /></a>

Wrapper on top of `SearchAnchor` with a localization
(ar, az, en, be, uk, pl, pt, fr, de, es, ja) support.

Representation layer of conversion `number` to a currency as `string`. Native
selector extension for Currency Selector with a dependency injection (list
representation layer) approach, and localization support.

https://pub.dev/packages/flutter_currency_picker

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

```dart
Currency? currency;

@override
Widget build(BuildContext context) {
  return CurrencySelector(
    value: currency?.code,
    hintText: 'Currency Type (Code)',
    hintStyle: Theme.of(context).textTheme.copyWith(
      color: textTheme.headlineSmall?.color!.withOpacity(0.4),
      overflow: TextOverflow.ellipsis,
    ),
    fieldBackground: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
    update: (value) => setState(() => currency = value),
  );
}
```

![Selector Sample](https://raw.githubusercontent.com/lyskouski/flutter_currency_picker/main/example/selector.png)

In addition to thanking, you may [treat us to :coffee:](https://www.buymeacoffee.com/lyskouski).
