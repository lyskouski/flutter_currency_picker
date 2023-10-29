library flutter_currency_picker;

import 'package:shared_preferences/shared_preferences.dart';
import 'src/currency_defaults.dart';

export 'src/currency.dart';
export 'src/currency_defaults.dart';
export 'src/currency_provider.dart';
export 'src/extension/currency_ext.dart';
export 'src/extension/currency_type_ext.dart';
export 'src/list/currency_item_registry.dart';
export 'src/list/currency_selector_item.dart';
export 'src/list/currency_selector.dart';

void main() {
  SharedPreferences.getInstance().then((v) => CurrencyDefaults.cache = v);
}
