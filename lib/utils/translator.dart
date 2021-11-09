import 'package:flutter/material.dart';

// defining enumeration_name and enumeration_list
enum LanguagesEnum {
  English,
  Nepali,
}

class Translator {
  // mapping object for English language
  Map<String, dynamic> en = {
    "home": "Home",
    "category": "Category",
    "cart": "Cart",
    "profile": "Profile",
  };
  // mapping object for Nepali language
  Map<String, dynamic> nep = {
    "home": "घर",
    "category": "श्रेणी",
    "cart": "कार्ट",
    "profile": "प्रोफाइल",
  };

  // language preferences
  dynamic to(LanguagesEnum selectedLanguage) {
    if (selectedLanguage == LanguagesEnum.English) {
      return en;
    } else if (selectedLanguage == LanguagesEnum.Nepali) {
      return nep;
    }
  }

  // for string translation
  String translate(LanguagesEnum selectedLanguage, String text) {
    return to(
        selectedLanguage)[text.toString().toLowerCase().replaceAll(" ", "_")];
  }
}
