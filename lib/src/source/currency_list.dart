// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'package:flutter_currency_picker/gen_l10n/app_localization.dart';
import 'package:flutter_currency_picker/src/currency.dart';
import 'package:flutter_currency_picker/src/currency_defaults.dart';

// Order by Most traded currencies:
// https://en.wikipedia.org/wiki/Template:Most_traded_currencies
List<Currency> currencyList(AppLocalizations labels) {
  return <Currency>[
    (
      code: 'USD',
      name: CurrencyDefaults.labels.currencyUSD,
      symbol: '\$',
      flag: '🇺🇸',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'EUR',
      name: CurrencyDefaults.labels.currencyEUR,
      symbol: '€',
      flag: '🇪🇺',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'JPY',
      name: CurrencyDefaults.labels.currencyJPY,
      symbol: '¥',
      flag: '🇯🇵',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'GBP',
      name: CurrencyDefaults.labels.currencyGBP,
      symbol: '£',
      flag: '🇬🇧',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'AUD',
      name: CurrencyDefaults.labels.currencyAUD,
      symbol: '\$',
      flag: '🇦🇺',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'CAD',
      name: CurrencyDefaults.labels.currencyCAD,
      symbol: '\$',
      flag: '🇨🇦',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'CHF',
      name: CurrencyDefaults.labels.currencyCHF,
      symbol: 'CHF',
      flag: '🇨🇭',
      decimalDigits: 2,
      thousandsSeparator: "'",
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'CNY',
      name: CurrencyDefaults.labels.currencyCNY,
      symbol: '¥',
      flag: '🇨🇳',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'HKD',
      name: CurrencyDefaults.labels.currencyHKD,
      symbol: '\$',
      flag: '🇭🇰',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'NZD',
      name: CurrencyDefaults.labels.currencyNZD,
      symbol: '\$',
      flag: '🇳🇿',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'SEK',
      name: CurrencyDefaults.labels.currencySEK,
      symbol: 'kr',
      flag: '🇸🇪',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'KRW',
      name: CurrencyDefaults.labels.currencyKRW,
      symbol: '₩',
      flag: '🇰🇷',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'SGD',
      name: CurrencyDefaults.labels.currencySGD,
      symbol: '\$',
      flag: '🇸🇬',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'NOK',
      name: CurrencyDefaults.labels.currencyNOK,
      symbol: 'kr',
      flag: '🇳🇴',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'MXN',
      name: CurrencyDefaults.labels.currencyMXN,
      symbol: '\$',
      flag: '🇲🇽',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'INR',
      name: CurrencyDefaults.labels.currencyINR,
      symbol: '₹',
      flag: '🇮🇳',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'RUB',
      name: CurrencyDefaults.labels.currencyRUB,
      symbol: '₽',
      flag: '🇷🇺',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'ZAR',
      name: CurrencyDefaults.labels.currencyZAR,
      symbol: 'R',
      flag: '🇿🇦',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'TRY',
      name: CurrencyDefaults.labels.currencyTRY,
      symbol: '₺',
      flag: '🇹🇷',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'BRL',
      name: CurrencyDefaults.labels.currencyBRL,
      symbol: 'R\$',
      flag: '🇧🇷',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'TWD',
      name: CurrencyDefaults.labels.currencyTWD,
      symbol: 'NT\$',
      flag: '🇹🇼',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'DKK',
      name: CurrencyDefaults.labels.currencyDKK,
      symbol: 'kr',
      flag: '🇩🇰',
      decimalDigits: 2,
      thousandsSeparator: '',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'PLN',
      name: CurrencyDefaults.labels.currencyPLN,
      symbol: 'zł',
      flag: '🇵🇱',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'THB',
      name: CurrencyDefaults.labels.currencyTHB,
      symbol: '฿',
      flag: '🇹🇭',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'IDR',
      name: CurrencyDefaults.labels.currencyIDR,
      symbol: 'Rp',
      flag: '🇮🇩',
      decimalDigits: 0,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'HUF',
      name: CurrencyDefaults.labels.currencyHUF,
      symbol: 'Ft',
      flag: '🇭🇺',
      decimalDigits: 0,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'CZK',
      name: CurrencyDefaults.labels.currencyCZK,
      symbol: 'Kč',
      flag: '🇨🇿',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'ILS',
      name: CurrencyDefaults.labels.currencyILS,
      symbol: '₪',
      flag: '🇮🇱',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'CLP',
      name: CurrencyDefaults.labels.currencyCLP,
      symbol: '\$',
      flag: '🇨🇱',
      decimalDigits: 0,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'PHP',
      name: CurrencyDefaults.labels.currencyPHP,
      symbol: '₱',
      flag: '🇵🇭',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'AED',
      name: CurrencyDefaults.labels.currencyAED,
      symbol: 'د.إ',
      flag: '🇦🇪',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'COP',
      name: CurrencyDefaults.labels.currencyCOP,
      symbol: '\$',
      flag: '🇨🇴',
      decimalDigits: 0,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'SAR',
      name: CurrencyDefaults.labels.currencySAR,
      symbol: '﷼',
      flag: '🇸🇦',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'MYR',
      name: CurrencyDefaults.labels.currencyMYR,
      symbol: 'RM',
      flag: '🇲🇾',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'RON',
      name: CurrencyDefaults.labels.currencyRON,
      symbol: 'L',
      flag: '🇷🇴',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'AFN',
      name: CurrencyDefaults.labels.currencyAFN,
      symbol: '؋',
      flag: '🇦🇫',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'ALL',
      name: CurrencyDefaults.labels.currencyALL,
      symbol: 'Lek',
      flag: '🇦🇱',
      decimalDigits: 0,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'DZD',
      name: CurrencyDefaults.labels.currencyDZD,
      symbol: 'دج',
      flag: '🇩🇿',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'ARS',
      name: CurrencyDefaults.labels.currencyARS,
      symbol: '\$',
      flag: '🇦🇷',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'AMD',
      name: CurrencyDefaults.labels.currencyAMD,
      symbol: '֏',
      flag: '🇦🇲',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'AZN',
      name: CurrencyDefaults.labels.currencyAZN,
      symbol: '₼',
      flag: '🇦🇿',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'BHD',
      name: CurrencyDefaults.labels.currencyBHD,
      symbol: 'BD',
      flag: '🇧🇭',
      decimalDigits: 3,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'BDT',
      name: CurrencyDefaults.labels.currencyBDT,
      symbol: ' Tk',
      flag: '🇧🇩',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'BBD',
      name: CurrencyDefaults.labels.currencyBBD,
      symbol: '\$',
      flag: '🇧🇧',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'BYN',
      name: CurrencyDefaults.labels.currencyBYN,
      symbol: 'Br',
      flag: '🇧🇾',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'BZD',
      name: CurrencyDefaults.labels.currencyBZD,
      symbol: 'BZ\$',
      flag: '🇧🇿',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'BMD',
      name: CurrencyDefaults.labels.currencyBMD,
      symbol: '\$',
      flag: '🇧🇲',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'BTN',
      name: CurrencyDefaults.labels.currencyBTN,
      symbol: 'Nu.',
      flag: '🇧🇹',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'BOB',
      name: CurrencyDefaults.labels.currencyBOB,
      symbol: '\$b',
      flag: '🇧🇴',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'BAM',
      name: CurrencyDefaults.labels.currencyBAM,
      symbol: 'KM',
      flag: '🇧🇦',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'BWP',
      name: CurrencyDefaults.labels.currencyBWP,
      symbol: 'P',
      flag: '🇧🇼',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'BND',
      name: CurrencyDefaults.labels.currencyBND,
      symbol: '\$',
      flag: '🇧🇳',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'BGN',
      name: CurrencyDefaults.labels.currencyBGN,
      symbol: 'лв',
      flag: '🇧🇬',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'BIF',
      name: CurrencyDefaults.labels.currencyBIF,
      symbol: 'FBu',
      flag: '🇧🇮',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'KHR',
      name: CurrencyDefaults.labels.currencyKHR,
      symbol: '៛',
      flag: '🇰🇭',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'KYD',
      name: CurrencyDefaults.labels.currencyKYD,
      symbol: '\$',
      flag: '🇰🇾',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'XAF',
      name: CurrencyDefaults.labels.currencyXAF,
      symbol: 'FCFA',
      flag: null,
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'XOF',
      name: CurrencyDefaults.labels.currencyXOF,
      symbol: '🈝🈔',
      flag: 'xof.png',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'CDF',
      name: CurrencyDefaults.labels.currencyCDF,
      symbol: 'FC',
      flag: '🇨🇩',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'CRC',
      name: CurrencyDefaults.labels.currencyCRC,
      symbol: '₡',
      flag: '🇨🇷',
      decimalDigits: 0,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'DOP',
      name: CurrencyDefaults.labels.currencyDOP,
      symbol: 'RD\$',
      flag: '🇩🇴',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'EGP',
      name: CurrencyDefaults.labels.currencyEGP,
      symbol: '£',
      flag: '🇪🇬',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'ETB',
      name: CurrencyDefaults.labels.currencyETB,
      symbol: 'Br',
      flag: '🇪🇹',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'GMD',
      name: CurrencyDefaults.labels.currencyGMD,
      symbol: 'D',
      flag: '🇬🇲',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'GEL',
      name: CurrencyDefaults.labels.currencyGEL,
      symbol: '₾',
      flag: '🇬🇪',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'GHS',
      name: CurrencyDefaults.labels.currencyGHS,
      symbol: '₵',
      flag: '🇬🇭',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'GTQ',
      name: CurrencyDefaults.labels.currencyGTQ,
      symbol: 'Q',
      flag: '🇬🇹',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'GYD',
      name: CurrencyDefaults.labels.currencyGYD,
      symbol: '\$',
      flag: '🇬🇾',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'HTG',
      name: CurrencyDefaults.labels.currencyHTG,
      symbol: 'G',
      flag: '🇭🇹',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'ISK',
      name: CurrencyDefaults.labels.currencyISK,
      symbol: 'kr',
      flag: '🇮🇸',
      decimalDigits: 0,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'JMD',
      name: CurrencyDefaults.labels.currencyJMD,
      symbol: 'J\$',
      flag: '🇯🇲',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'JOD',
      name: CurrencyDefaults.labels.currencyJOD,
      symbol: 'د.أ',
      flag: '🇯🇴',
      decimalDigits: 3,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'KZT',
      name: CurrencyDefaults.labels.currencyKZT,
      symbol: '〒',
      flag: '🇰🇿',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: '-',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'KES',
      name: CurrencyDefaults.labels.currencyKES,
      symbol: 'KSh',
      flag: '🇰🇪',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'KWD',
      name: CurrencyDefaults.labels.currencyKWD,
      symbol: 'د.ك',
      flag: '🇰🇼',
      decimalDigits: 3,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'KGS',
      name: CurrencyDefaults.labels.currencyKGS,
      symbol: 'с',
      flag: '🇰🇬',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'UZS',
      name: CurrencyDefaults.labels.currencyUZS,
      symbol: 'sum',
      flag: '🇯🇵',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'LAK',
      name: CurrencyDefaults.labels.currencyLAK,
      symbol: '₭',
      flag: '🇱🇦',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'LRD',
      name: CurrencyDefaults.labels.currencyLRD,
      symbol: '\$',
      flag: '🇱🇷',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'MKD',
      name: CurrencyDefaults.labels.currencyMKD,
      symbol: 'ден',
      flag: '🇲🇰',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'MWK',
      name: CurrencyDefaults.labels.currencyMWK,
      symbol: 'MK',
      flag: '🇲🇼',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'MUR',
      name: CurrencyDefaults.labels.currencyMUR,
      symbol: '₨',
      flag: '🇲🇺',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'MDL',
      name: CurrencyDefaults.labels.currencyMDL,
      symbol: 'L',
      flag: '🇲🇩',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'MNT',
      name: CurrencyDefaults.labels.currencyMNT,
      symbol: '₮',
      flag: '🇲🇳',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'MAD',
      name: CurrencyDefaults.labels.currencyMAD,
      symbol: 'MAD',
      flag: '🇲🇦',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'MZN',
      name: CurrencyDefaults.labels.currencyMZN,
      symbol: 'MT',
      flag: '🇲🇿',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'MMK',
      name: CurrencyDefaults.labels.currencyMMK,
      symbol: 'Ks',
      flag: '🇲🇲',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'NAD',
      name: CurrencyDefaults.labels.currencyNAD,
      symbol: '\$',
      flag: '🇳🇦',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'NPR',
      name: CurrencyDefaults.labels.currencyNPR,
      symbol: '₨',
      flag: '🇳🇵',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'NIO',
      name: CurrencyDefaults.labels.currencyNIO,
      symbol: 'C\$',
      flag: '🇳🇮',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'NGN',
      name: CurrencyDefaults.labels.currencyNGN,
      symbol: '₦',
      flag: '🇳🇬',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'OMR',
      name: CurrencyDefaults.labels.currencyOMR,
      symbol: '﷼',
      flag: '🇴🇲',
      decimalDigits: 3,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'PKR',
      name: CurrencyDefaults.labels.currencyPKR,
      symbol: '₨',
      flag: '🇵🇰',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'PGK',
      name: CurrencyDefaults.labels.currencyPGK,
      symbol: 'K',
      flag: '🇵🇬',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'PYG',
      name: CurrencyDefaults.labels.currencyPYG,
      symbol: '₲',
      flag: '🇵🇾',
      decimalDigits: 0,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'PEN',
      name: CurrencyDefaults.labels.currencyPEN,
      symbol: 'S/.',
      flag: '🇵🇪',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'QAR',
      name: CurrencyDefaults.labels.currencyQAR,
      symbol: '﷼',
      flag: '🇶🇦',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'RWF',
      name: CurrencyDefaults.labels.currencyRWF,
      symbol: 'FRw',
      flag: '🇷🇼',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'RSD',
      name: CurrencyDefaults.labels.currencyRSD,
      symbol: 'Дин.',
      flag: '🇷🇸',
      decimalDigits: 0,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'SCR',
      name: CurrencyDefaults.labels.currencySCR,
      symbol: '₨',
      flag: '🇸🇨',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'SOS',
      name: CurrencyDefaults.labels.currencySOS,
      symbol: 'S',
      flag: '🇸🇴',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'LKR',
      name: CurrencyDefaults.labels.currencyLKR,
      symbol: '₨',
      flag: '🇱🇰',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'SRD',
      name: CurrencyDefaults.labels.currencySRD,
      symbol: '\$',
      flag: '🇸🇷',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'SYP',
      name: CurrencyDefaults.labels.currencySYP,
      symbol: 'LS',
      flag: '🇸🇾',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'TZS',
      name: CurrencyDefaults.labels.currencyTZS,
      symbol: 'TSh',
      flag: '🇹🇿',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'TTD',
      name: CurrencyDefaults.labels.currencyTTD,
      symbol: 'TT\$',
      flag: '🇹🇹',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'TND',
      name: CurrencyDefaults.labels.currencyTND,
      symbol: 'د.ت',
      flag: '🇹🇳',
      decimalDigits: 2,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'UGX',
      name: CurrencyDefaults.labels.currencyUGX,
      symbol: 'USh',
      flag: '🇺🇬',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: false,
      symbolOnLeft: true,
    ),
    (
      code: 'UAH',
      name: CurrencyDefaults.labels.currencyUAH,
      symbol: '₴',
      flag: '🇺🇦',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: false,
    ),
    (
      code: 'UYU',
      name: CurrencyDefaults.labels.currencyUYU,
      symbol: '\$U',
      flag: '🇺🇾',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'VEF',
      name: CurrencyDefaults.labels.currencyVEF,
      symbol: 'Bs',
      flag: '🇻🇪',
      decimalDigits: 2,
      thousandsSeparator: '.',
      decimalSeparator: ',',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'VND',
      name: CurrencyDefaults.labels.currencyVND,
      symbol: '₫',
      flag: '🇻🇳',
      decimalDigits: 0,
      thousandsSeparator: '.',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: false,
    ),
    (
      code: 'YER',
      name: CurrencyDefaults.labels.currencyYER,
      symbol: '﷼',
      flag: '🇾🇪',
      decimalDigits: 0,
      thousandsSeparator: ',',
      decimalSeparator: '.',
      hasSpace: true,
      symbolOnLeft: true,
    ),
    (
      code: 'ZMW',
      name: CurrencyDefaults.labels.currencyZMW,
      symbol: 'ZK',
      flag: '🇿🇲',
      decimalDigits: 2,
      thousandsSeparator: ' ',
      decimalSeparator: ',',
      hasSpace: false,
      symbolOnLeft: true,
    ),
  ];
}
