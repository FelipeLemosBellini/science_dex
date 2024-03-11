import 'dart:io';

import 'package:science_dex/screens/helper/i18n/strings/pt_br.dart';
import 'package:science_dex/screens/helper/science_dex_constrains.dart';

abstract class Translate {
  static TranslateStrings strings = _getType();

  static T _getType<T extends TranslateStrings>() {
    switch (Platform.localeName) {
      case ScienceDexConstants.ptBR:
        return PtBr() as T;
      default:
        return PtBr() as T;
    }
  }
}

abstract class TranslateStrings {
  String get configuration;
}
