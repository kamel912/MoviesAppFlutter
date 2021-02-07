import 'package:flutter/material.dart';

extension FullName on Locale {
  String get fullName {
    switch (this.languageCode) {
      case 'ar':
        return 'العربية';
      case 'es':
        return 'Española';
      case 'en':
      default:
        return 'English';
    }
  }

  TextDirection get textDirection {
    switch (this.languageCode) {
      case 'ar':
        return TextDirection.rtl;
      case 'en':
      default:
        return TextDirection.ltr;
    }
  }

  int get quarterTurns {
    switch (this.textDirection) {
      case TextDirection.rtl:
        return 1;
      case TextDirection.ltr:
      default:
        return 3;
    }
  }
}
