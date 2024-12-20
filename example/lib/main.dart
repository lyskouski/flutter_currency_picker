import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/flutter_currency_picker.dart';

// Simplify access
extension BuildContextExt on BuildContext {
  // To ColorScheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  // To TextTheme
  TextTheme get textTheme => Theme.of(this).textTheme;
}

// Add own representation layer
class CodeCurrencySelectorItem extends CurrencySelectorItem {
  @override
  CurrencyViewPattern? get selectionView => (input) => input.code;

  @override
  Widget? build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 42,
          child: Text(item.code),
        ),
        Expanded(
          child: Align(alignment: Alignment.topLeft, child: Text(item.name)),
        ),
        SizedBox(
          width: 32,
          child: Center(child: Text(item.symbol)),
        ),
      ],
    );
  }

  factory CodeCurrencySelectorItem.fromCurrency(Currency item) =>
      CodeCurrencySelectorItem(item);

  CodeCurrencySelectorItem(super.item);
}

class CodeCurrencySelector extends CurrencySelector<CodeCurrencySelectorItem> {
  @override
  String get hintText => 'Select Currency';

  late final TextStyle? _hintStyle;
  @override
  TextStyle? get hintStyle => _hintStyle;

  @override
  TextStyle? get headerHintStyle => _hintStyle;

  late final Color? _fieldBackground;
  @override
  Color? get fieldBackground => _fieldBackground;

  @override
  EdgeInsets get indent => const EdgeInsets.fromLTRB(8, 12, 0, 12);

  CodeCurrencySelector({
    super.key,
    required super.update,
    required BuildContext context,
    super.value,
  }) {
    // Registry additional representation layer
    CurrencyItemRegistry.list[CodeCurrencySelectorItem] =
        CodeCurrencySelectorItem.fromCurrency;
    // Define hint styling
    _hintStyle = context.textTheme.bodyLarge!.copyWith(
      color: context.textTheme.headlineSmall?.color!.withValues(alpha: 0.4),
      overflow: TextOverflow.ellipsis,
    );
    // Add background color to selector
    _fieldBackground = context.colorScheme.onSurface.withValues(alpha: 0.1);
  }

  @override
  CodeCurrencySelectorState createState() => CodeCurrencySelectorState();
}

class CodeCurrencySelectorState extends CurrencySelectorState<
    CodeCurrencySelector, CodeCurrencySelectorItem> {
  @override
  // Override Selector List Builder
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
                padding: const EdgeInsets.fromLTRB(8, 12, 0, 12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item?.toString() ?? widget.hintText,
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
}
