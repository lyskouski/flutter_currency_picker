import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_ar.dart';
import 'app_localization_az.dart';
import 'app_localization_be.dart';
import 'app_localization_cs.dart';
import 'app_localization_de.dart';
import 'app_localization_en.dart';
import 'app_localization_es.dart';
import 'app_localization_fa.dart';
import 'app_localization_fr.dart';
import 'app_localization_hi.dart';
import 'app_localization_it.dart';
import 'app_localization_ja.dart';
import 'app_localization_ka.dart';
import 'app_localization_ko.dart';
import 'app_localization_nl.dart';
import 'app_localization_pl.dart';
import 'app_localization_pt.dart';
import 'app_localization_ro.dart';
import 'app_localization_tr.dart';
import 'app_localization_uk.dart';
import 'app_localization_uz.dart';
import 'app_localization_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('be'),
    Locale('uk'),
    Locale('pl'),
    Locale('pt'),
    Locale('fr'),
    Locale('de'),
    Locale('zh'),
    Locale('hi'),
    Locale('uz'),
    Locale('fa'),
    Locale('ar'),
    Locale('az'),
    Locale('ja'),
    Locale('es'),
    Locale('it'),
    Locale('tr'),
    Locale('ko'),
    Locale('nl'),
    Locale('cs'),
    Locale('ro'),
    Locale('be', 'EU'),
    Locale('ka'),
    Locale('pt', 'BR'),
    Locale('zh', 'TW')
  ];

  /// No description provided for @currencyAED.
  ///
  /// In en, this message translates to:
  /// **'Emirati Dirham'**
  String get currencyAED;

  /// No description provided for @currencyAFN.
  ///
  /// In en, this message translates to:
  /// **'Afghanistan Afghani'**
  String get currencyAFN;

  /// No description provided for @currencyALL.
  ///
  /// In en, this message translates to:
  /// **'Albanian Lek'**
  String get currencyALL;

  /// No description provided for @currencyAMD.
  ///
  /// In en, this message translates to:
  /// **'Armenian Dram'**
  String get currencyAMD;

  /// No description provided for @currencyANG.
  ///
  /// In en, this message translates to:
  /// **'Netherlands Antillean Guilder'**
  String get currencyANG;

  /// No description provided for @currencyAOA.
  ///
  /// In en, this message translates to:
  /// **'Angolan Kwanza'**
  String get currencyAOA;

  /// No description provided for @currencyARS.
  ///
  /// In en, this message translates to:
  /// **'Argentine Peso'**
  String get currencyARS;

  /// No description provided for @currencyAUD.
  ///
  /// In en, this message translates to:
  /// **'Australian Dollar'**
  String get currencyAUD;

  /// No description provided for @currencyAWG.
  ///
  /// In en, this message translates to:
  /// **'Aruban Florin'**
  String get currencyAWG;

  /// No description provided for @currencyAZN.
  ///
  /// In en, this message translates to:
  /// **'Azerbaijani Manat'**
  String get currencyAZN;

  /// No description provided for @currencyBAM.
  ///
  /// In en, this message translates to:
  /// **'Bosnia and Herzegovina convertible mark'**
  String get currencyBAM;

  /// No description provided for @currencyBBD.
  ///
  /// In en, this message translates to:
  /// **'Barbados Dollar'**
  String get currencyBBD;

  /// No description provided for @currencyBDT.
  ///
  /// In en, this message translates to:
  /// **'Bangladeshi Taka'**
  String get currencyBDT;

  /// No description provided for @currencyBGN.
  ///
  /// In en, this message translates to:
  /// **'Bulgarian Lev'**
  String get currencyBGN;

  /// No description provided for @currencyBHD.
  ///
  /// In en, this message translates to:
  /// **'Bahraini Dinar'**
  String get currencyBHD;

  /// No description provided for @currencyBIF.
  ///
  /// In en, this message translates to:
  /// **'Burundian Franc'**
  String get currencyBIF;

  /// No description provided for @currencyBMD.
  ///
  /// In en, this message translates to:
  /// **'Bermuda Dollar'**
  String get currencyBMD;

  /// No description provided for @currencyBND.
  ///
  /// In en, this message translates to:
  /// **'Brunei Darussalam Dollar'**
  String get currencyBND;

  /// No description provided for @currencyBOB.
  ///
  /// In en, this message translates to:
  /// **'Bolivia Bolíviano'**
  String get currencyBOB;

  /// No description provided for @currencyBRL.
  ///
  /// In en, this message translates to:
  /// **'Brazilian Real'**
  String get currencyBRL;

  /// No description provided for @currencyBSD.
  ///
  /// In en, this message translates to:
  /// **'Bahamian Dollar'**
  String get currencyBSD;

  /// No description provided for @currencyBTN.
  ///
  /// In en, this message translates to:
  /// **'Bhutanese Ngultrum'**
  String get currencyBTN;

  /// No description provided for @currencyBWP.
  ///
  /// In en, this message translates to:
  /// **'Botswanan Pula'**
  String get currencyBWP;

  /// No description provided for @currencyBYN.
  ///
  /// In en, this message translates to:
  /// **'Belarussian Ruble'**
  String get currencyBYN;

  /// No description provided for @currencyBZD.
  ///
  /// In en, this message translates to:
  /// **'Belize Dollar'**
  String get currencyBZD;

  /// No description provided for @currencyCAD.
  ///
  /// In en, this message translates to:
  /// **'Canadian Dollar'**
  String get currencyCAD;

  /// No description provided for @currencyCDF.
  ///
  /// In en, this message translates to:
  /// **'Congolese franc'**
  String get currencyCDF;

  /// No description provided for @currencyCHF.
  ///
  /// In en, this message translates to:
  /// **'Switzerland Franc'**
  String get currencyCHF;

  /// No description provided for @currencyCLP.
  ///
  /// In en, this message translates to:
  /// **'Chile Peso'**
  String get currencyCLP;

  /// No description provided for @currencyCNY.
  ///
  /// In en, this message translates to:
  /// **'China Yuan Renminbi'**
  String get currencyCNY;

  /// No description provided for @currencyCOP.
  ///
  /// In en, this message translates to:
  /// **'Colombia Peso'**
  String get currencyCOP;

  /// No description provided for @currencyCRC.
  ///
  /// In en, this message translates to:
  /// **'Costa Rica Colon'**
  String get currencyCRC;

  /// No description provided for @currencyCUP.
  ///
  /// In en, this message translates to:
  /// **'Cuban Peso'**
  String get currencyCUP;

  /// No description provided for @currencyCVE.
  ///
  /// In en, this message translates to:
  /// **'Cape Verdean Escudo'**
  String get currencyCVE;

  /// No description provided for @currencyCZK.
  ///
  /// In en, this message translates to:
  /// **'Czech Koruna'**
  String get currencyCZK;

  /// No description provided for @currencyDJF.
  ///
  /// In en, this message translates to:
  /// **'Djiboutian Franc'**
  String get currencyDJF;

  /// No description provided for @currencyDKK.
  ///
  /// In en, this message translates to:
  /// **'Denmark Krone'**
  String get currencyDKK;

  /// No description provided for @currencyDOP.
  ///
  /// In en, this message translates to:
  /// **'Dominican Republic Peso'**
  String get currencyDOP;

  /// No description provided for @currencyDZD.
  ///
  /// In en, this message translates to:
  /// **'Algerian dinar'**
  String get currencyDZD;

  /// No description provided for @currencyEGP.
  ///
  /// In en, this message translates to:
  /// **'Egypt Pound'**
  String get currencyEGP;

  /// No description provided for @currencyERN.
  ///
  /// In en, this message translates to:
  /// **'Eritrean Nakfa'**
  String get currencyERN;

  /// No description provided for @currencyETB.
  ///
  /// In en, this message translates to:
  /// **'Ethiopian Birr'**
  String get currencyETB;

  /// No description provided for @currencyEUR.
  ///
  /// In en, this message translates to:
  /// **'Euro'**
  String get currencyEUR;

  /// No description provided for @currencyFJD.
  ///
  /// In en, this message translates to:
  /// **'Fijian Dollar'**
  String get currencyFJD;

  /// No description provided for @currencyFKP.
  ///
  /// In en, this message translates to:
  /// **'Falkland Islands Pound'**
  String get currencyFKP;

  /// No description provided for @currencyGBP.
  ///
  /// In en, this message translates to:
  /// **'British Pound'**
  String get currencyGBP;

  /// No description provided for @currencyGEL.
  ///
  /// In en, this message translates to:
  /// **'Georgian Lari'**
  String get currencyGEL;

  /// No description provided for @currencyGHS.
  ///
  /// In en, this message translates to:
  /// **'Ghana Cedi'**
  String get currencyGHS;

  /// No description provided for @currencyGIP.
  ///
  /// In en, this message translates to:
  /// **'Gibraltar Pound'**
  String get currencyGIP;

  /// No description provided for @currencyGMD.
  ///
  /// In en, this message translates to:
  /// **'Gambian dalasi'**
  String get currencyGMD;

  /// No description provided for @currencyGNF.
  ///
  /// In en, this message translates to:
  /// **'Guinean Franc'**
  String get currencyGNF;

  /// No description provided for @currencyGTQ.
  ///
  /// In en, this message translates to:
  /// **'Guatemalan quetzal'**
  String get currencyGTQ;

  /// No description provided for @currencyGYD.
  ///
  /// In en, this message translates to:
  /// **'Guyana Dollar'**
  String get currencyGYD;

  /// No description provided for @currencyHKD.
  ///
  /// In en, this message translates to:
  /// **'Hong Kong Dollar'**
  String get currencyHKD;

  /// No description provided for @currencyHNL.
  ///
  /// In en, this message translates to:
  /// **'Honduran Lempira'**
  String get currencyHNL;

  /// No description provided for @currencyHTG.
  ///
  /// In en, this message translates to:
  /// **'Haitian gourde'**
  String get currencyHTG;

  /// No description provided for @currencyHUF.
  ///
  /// In en, this message translates to:
  /// **'Hungary Forint'**
  String get currencyHUF;

  /// No description provided for @currencyIDR.
  ///
  /// In en, this message translates to:
  /// **'Indonesia Rupiah'**
  String get currencyIDR;

  /// No description provided for @currencyILS.
  ///
  /// In en, this message translates to:
  /// **'Israel Shekel'**
  String get currencyILS;

  /// No description provided for @currencyINR.
  ///
  /// In en, this message translates to:
  /// **'Indian Rupee'**
  String get currencyINR;

  /// No description provided for @currencyIQD.
  ///
  /// In en, this message translates to:
  /// **'Iraqi Dinar'**
  String get currencyIQD;

  /// No description provided for @currencyIRR.
  ///
  /// In en, this message translates to:
  /// **'Iranian Rial'**
  String get currencyIRR;

  /// No description provided for @currencyISK.
  ///
  /// In en, this message translates to:
  /// **'Iceland Krona'**
  String get currencyISK;

  /// No description provided for @currencyJMD.
  ///
  /// In en, this message translates to:
  /// **'Jamaica Dollar'**
  String get currencyJMD;

  /// No description provided for @currencyJOD.
  ///
  /// In en, this message translates to:
  /// **'Jordanian dinar'**
  String get currencyJOD;

  /// No description provided for @currencyJPY.
  ///
  /// In en, this message translates to:
  /// **'Japanese Yen'**
  String get currencyJPY;

  /// No description provided for @currencyKES.
  ///
  /// In en, this message translates to:
  /// **'Kenyan Shilling'**
  String get currencyKES;

  /// No description provided for @currencyKGS.
  ///
  /// In en, this message translates to:
  /// **'Kyrgyzstani som'**
  String get currencyKGS;

  /// No description provided for @currencyKHR.
  ///
  /// In en, this message translates to:
  /// **'Cambodian riel'**
  String get currencyKHR;

  /// No description provided for @currencyKMF.
  ///
  /// In en, this message translates to:
  /// **'Comorian Franc'**
  String get currencyKMF;

  /// No description provided for @currencyKPW.
  ///
  /// In en, this message translates to:
  /// **'North Korean Won'**
  String get currencyKPW;

  /// No description provided for @currencyKRW.
  ///
  /// In en, this message translates to:
  /// **'South Korea Won'**
  String get currencyKRW;

  /// No description provided for @currencyKWD.
  ///
  /// In en, this message translates to:
  /// **'Kuwaiti Dinar'**
  String get currencyKWD;

  /// No description provided for @currencyKYD.
  ///
  /// In en, this message translates to:
  /// **'Cayman Islands Dollar'**
  String get currencyKYD;

  /// No description provided for @currencyKZT.
  ///
  /// In en, this message translates to:
  /// **'Kazakhstan Tenge'**
  String get currencyKZT;

  /// No description provided for @currencyLAK.
  ///
  /// In en, this message translates to:
  /// **'Laos Kip'**
  String get currencyLAK;

  /// No description provided for @currencyLBP.
  ///
  /// In en, this message translates to:
  /// **'Lebanese pound'**
  String get currencyLBP;

  /// No description provided for @currencyLKR.
  ///
  /// In en, this message translates to:
  /// **'Sri Lanka Rupee'**
  String get currencyLKR;

  /// No description provided for @currencyLRD.
  ///
  /// In en, this message translates to:
  /// **'Liberia Dollar'**
  String get currencyLRD;

  /// No description provided for @currencyLSL.
  ///
  /// In en, this message translates to:
  /// **'Lesotho Loti'**
  String get currencyLSL;

  /// No description provided for @currencyLYD.
  ///
  /// In en, this message translates to:
  /// **'Libyan Dinar'**
  String get currencyLYD;

  /// No description provided for @currencyMAD.
  ///
  /// In en, this message translates to:
  /// **'Moroccan Dirham'**
  String get currencyMAD;

  /// No description provided for @currencyMDL.
  ///
  /// In en, this message translates to:
  /// **'Moldovan Leu'**
  String get currencyMDL;

  /// No description provided for @currencyMGA.
  ///
  /// In en, this message translates to:
  /// **'Malagasy Ariary'**
  String get currencyMGA;

  /// No description provided for @currencyMKD.
  ///
  /// In en, this message translates to:
  /// **'Macedonia Denar'**
  String get currencyMKD;

  /// No description provided for @currencyMMK.
  ///
  /// In en, this message translates to:
  /// **'Myanmar Kyat'**
  String get currencyMMK;

  /// No description provided for @currencyMNT.
  ///
  /// In en, this message translates to:
  /// **'Mongolia Tughrik'**
  String get currencyMNT;

  /// No description provided for @currencyMOP.
  ///
  /// In en, this message translates to:
  /// **'Macanese Pataca'**
  String get currencyMOP;

  /// No description provided for @currencyMRU.
  ///
  /// In en, this message translates to:
  /// **'Mauritanian Ouguiya'**
  String get currencyMRU;

  /// No description provided for @currencyMUR.
  ///
  /// In en, this message translates to:
  /// **'Mauritius Rupee'**
  String get currencyMUR;

  /// No description provided for @currencyMVR.
  ///
  /// In en, this message translates to:
  /// **'Maldivian Rufiyaa'**
  String get currencyMVR;

  /// No description provided for @currencyMWK.
  ///
  /// In en, this message translates to:
  /// **'Malawian Kwacha'**
  String get currencyMWK;

  /// No description provided for @currencyMXN.
  ///
  /// In en, this message translates to:
  /// **'Mexico Peso'**
  String get currencyMXN;

  /// No description provided for @currencyMYR.
  ///
  /// In en, this message translates to:
  /// **'Malaysia Ringgit'**
  String get currencyMYR;

  /// No description provided for @currencyMZN.
  ///
  /// In en, this message translates to:
  /// **'Mozambique Metical'**
  String get currencyMZN;

  /// No description provided for @currencyNAD.
  ///
  /// In en, this message translates to:
  /// **'Namibia Dollar'**
  String get currencyNAD;

  /// No description provided for @currencyNGN.
  ///
  /// In en, this message translates to:
  /// **'Nigeria Naira'**
  String get currencyNGN;

  /// No description provided for @currencyNIO.
  ///
  /// In en, this message translates to:
  /// **'Nicaragua Cordoba'**
  String get currencyNIO;

  /// No description provided for @currencyNOK.
  ///
  /// In en, this message translates to:
  /// **'Norway Krone'**
  String get currencyNOK;

  /// No description provided for @currencyNPR.
  ///
  /// In en, this message translates to:
  /// **'Nepal Rupee'**
  String get currencyNPR;

  /// No description provided for @currencyNZD.
  ///
  /// In en, this message translates to:
  /// **'New Zealand Dollar'**
  String get currencyNZD;

  /// No description provided for @currencyOMR.
  ///
  /// In en, this message translates to:
  /// **'Oman Rial'**
  String get currencyOMR;

  /// No description provided for @currencyPAB.
  ///
  /// In en, this message translates to:
  /// **'Panamanian Balboa'**
  String get currencyPAB;

  /// No description provided for @currencyPEN.
  ///
  /// In en, this message translates to:
  /// **'Peru Sol'**
  String get currencyPEN;

  /// No description provided for @currencyPGK.
  ///
  /// In en, this message translates to:
  /// **'Papua New Guinean Kina'**
  String get currencyPGK;

  /// No description provided for @currencyPHP.
  ///
  /// In en, this message translates to:
  /// **'Philippines Peso'**
  String get currencyPHP;

  /// No description provided for @currencyPKR.
  ///
  /// In en, this message translates to:
  /// **'Pakistan Rupee'**
  String get currencyPKR;

  /// No description provided for @currencyPLN.
  ///
  /// In en, this message translates to:
  /// **'Poland Zloty'**
  String get currencyPLN;

  /// No description provided for @currencyPYG.
  ///
  /// In en, this message translates to:
  /// **'Paraguay Guarani'**
  String get currencyPYG;

  /// No description provided for @currencyQAR.
  ///
  /// In en, this message translates to:
  /// **'Qatar Riyal'**
  String get currencyQAR;

  /// No description provided for @currencyRON.
  ///
  /// In en, this message translates to:
  /// **'Romania Leu'**
  String get currencyRON;

  /// No description provided for @currencyRSD.
  ///
  /// In en, this message translates to:
  /// **'Serbia Dinar'**
  String get currencyRSD;

  /// No description provided for @currencyRUB.
  ///
  /// In en, this message translates to:
  /// **'Russia Ruble'**
  String get currencyRUB;

  /// No description provided for @currencyRWF.
  ///
  /// In en, this message translates to:
  /// **'Rwandan franc'**
  String get currencyRWF;

  /// No description provided for @currencySAR.
  ///
  /// In en, this message translates to:
  /// **'Saudi Arabia Riyal'**
  String get currencySAR;

  /// No description provided for @currencySBD.
  ///
  /// In en, this message translates to:
  /// **'Solomon Islands Dollar'**
  String get currencySBD;

  /// No description provided for @currencySCR.
  ///
  /// In en, this message translates to:
  /// **'Seychellois rupee'**
  String get currencySCR;

  /// No description provided for @currencySDG.
  ///
  /// In en, this message translates to:
  /// **'Sudanese pound'**
  String get currencySDG;

  /// No description provided for @currencySEK.
  ///
  /// In en, this message translates to:
  /// **'Sweden Krona'**
  String get currencySEK;

  /// No description provided for @currencySGD.
  ///
  /// In en, this message translates to:
  /// **'Singapore Dollar'**
  String get currencySGD;

  /// No description provided for @currencySHP.
  ///
  /// In en, this message translates to:
  /// **'Saint Helena Pound'**
  String get currencySHP;

  /// No description provided for @currencySLE.
  ///
  /// In en, this message translates to:
  /// **'Sierra Leonean Leone'**
  String get currencySLE;

  /// No description provided for @currencySOS.
  ///
  /// In en, this message translates to:
  /// **'Somalia Shilling'**
  String get currencySOS;

  /// No description provided for @currencySRD.
  ///
  /// In en, this message translates to:
  /// **'Suriname Dollar'**
  String get currencySRD;

  /// No description provided for @currencySSP.
  ///
  /// In en, this message translates to:
  /// **'South Sudanese Pound'**
  String get currencySSP;

  /// No description provided for @currencySTN.
  ///
  /// In en, this message translates to:
  /// **'São Tomé and Príncipe Dobra'**
  String get currencySTN;

  /// No description provided for @currencySVC.
  ///
  /// In en, this message translates to:
  /// **'Salvadoran Colón'**
  String get currencySVC;

  /// No description provided for @currencySYP.
  ///
  /// In en, this message translates to:
  /// **'Syrian Lira'**
  String get currencySYP;

  /// No description provided for @currencySZL.
  ///
  /// In en, this message translates to:
  /// **'Swazi Lilangeni'**
  String get currencySZL;

  /// No description provided for @currencyTHB.
  ///
  /// In en, this message translates to:
  /// **'Thailand Baht'**
  String get currencyTHB;

  /// No description provided for @currencyTJS.
  ///
  /// In en, this message translates to:
  /// **'Tajikistani Somoni'**
  String get currencyTJS;

  /// No description provided for @currencyTMT.
  ///
  /// In en, this message translates to:
  /// **'Turkmenistani Manat'**
  String get currencyTMT;

  /// No description provided for @currencyTND.
  ///
  /// In en, this message translates to:
  /// **'Tunisian dinar'**
  String get currencyTND;

  /// No description provided for @currencyTOP.
  ///
  /// In en, this message translates to:
  /// **'Tongan Paʻanga'**
  String get currencyTOP;

  /// No description provided for @currencyTRY.
  ///
  /// In en, this message translates to:
  /// **'Turkish Lira'**
  String get currencyTRY;

  /// No description provided for @currencyTTD.
  ///
  /// In en, this message translates to:
  /// **'Trinidad and Tobago Dollar'**
  String get currencyTTD;

  /// No description provided for @currencyTWD.
  ///
  /// In en, this message translates to:
  /// **'Taiwan New Dollar'**
  String get currencyTWD;

  /// No description provided for @currencyTZS.
  ///
  /// In en, this message translates to:
  /// **'Tanzanian Shilling'**
  String get currencyTZS;

  /// No description provided for @currencyUAH.
  ///
  /// In en, this message translates to:
  /// **'Ukraine Hryvnia'**
  String get currencyUAH;

  /// No description provided for @currencyUGX.
  ///
  /// In en, this message translates to:
  /// **'Ugandan Shilling'**
  String get currencyUGX;

  /// No description provided for @currencyUSD.
  ///
  /// In en, this message translates to:
  /// **'United States Dollar'**
  String get currencyUSD;

  /// No description provided for @currencyUYU.
  ///
  /// In en, this message translates to:
  /// **'Uruguay Peso'**
  String get currencyUYU;

  /// No description provided for @currencyUZS.
  ///
  /// In en, this message translates to:
  /// **'Uzbekistani sum'**
  String get currencyUZS;

  /// No description provided for @currencyVES.
  ///
  /// In en, this message translates to:
  /// **'Venezuelan Bolívar Soberano'**
  String get currencyVES;

  /// No description provided for @currencyVND.
  ///
  /// In en, this message translates to:
  /// **'Viet Nam Dong'**
  String get currencyVND;

  /// No description provided for @currencyVUV.
  ///
  /// In en, this message translates to:
  /// **'Vanuatu Vatu'**
  String get currencyVUV;

  /// No description provided for @currencyWST.
  ///
  /// In en, this message translates to:
  /// **'Samoan Tala'**
  String get currencyWST;

  /// No description provided for @currencyXAF.
  ///
  /// In en, this message translates to:
  /// **'Central African CFA franc'**
  String get currencyXAF;

  /// No description provided for @currencyXCD.
  ///
  /// In en, this message translates to:
  /// **'East Caribbean Dollar'**
  String get currencyXCD;

  /// No description provided for @currencyXOF.
  ///
  /// In en, this message translates to:
  /// **'UEMOA CFA franc'**
  String get currencyXOF;

  /// No description provided for @currencyXPF.
  ///
  /// In en, this message translates to:
  /// **'CFP Franc'**
  String get currencyXPF;

  /// No description provided for @currencyYER.
  ///
  /// In en, this message translates to:
  /// **'Yemen Rial'**
  String get currencyYER;

  /// No description provided for @currencyZAR.
  ///
  /// In en, this message translates to:
  /// **'South Africa Rand'**
  String get currencyZAR;

  /// No description provided for @currencyZMW.
  ///
  /// In en, this message translates to:
  /// **'Zambian kwacha'**
  String get currencyZMW;

  /// No description provided for @currencyZWG.
  ///
  /// In en, this message translates to:
  /// **'Zimbabwe Gold'**
  String get currencyZWG;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'az',
        'be',
        'cs',
        'de',
        'en',
        'es',
        'fa',
        'fr',
        'hi',
        'it',
        'ja',
        'ka',
        'ko',
        'nl',
        'pl',
        'pt',
        'ro',
        'tr',
        'uk',
        'uz',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'be':
      {
        switch (locale.countryCode) {
          case 'EU':
            return AppLocalizationsBeEu();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'cs':
      return AppLocalizationsCs();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'uz':
      return AppLocalizationsUz();
    case 'zh':
      return AppLocalizationsZh();
  }

  return AppLocalizationsEn();
}
