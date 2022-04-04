
import 'package:flutter/material.dart';

class Language {
  Locale locale;
  String langName;
  Language({
    required this.locale,
    required this.langName,
  });
  
  List<Language> languageList = [
    Language(
      langName: 'English - UK',
      locale: const Locale('en'),
    ),
    Language(
      langName: 'Russion - RS',
      locale: const Locale('ru'),
    ),
    Language(
      langName: 'Uzbek - UZ',
      locale: const Locale('uz'),
    )
  ];
  
}

