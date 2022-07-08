import 'package:flutter/material.dart';
import 'package:get/get.dart';

// defining enumeration_name and enumeration_list
enum LanguagesEnum {
  English,
  Nepali,
}

class MyTranslator extends Translations {
  // // mapping object for English language
  // Map<String, dynamic> en = {
  //   "home": "Home",
  //   "category": "Category",
  //   "cart": "Cart",
  //   "profile": "Profile",
  //   "recommended": "Recommended",
  //   "view_more": "View More",
  // };
  // // mapping object for Nepali language
  // Map<String, dynamic> nep = {
  //   "home": "घर",
  //   "category": "श्रेणी",
  //   "cart": "कार्ट",
  //   "profile": "प्रोफाइल",
  //   "recommended": "सिफारिस",
  //   "view_more": "अझ धेरै हेर्नुहोस्",
  // };

  // // language preferences
  // dynamic to(LanguagesEnum selectedLanguage) {
  //   if (selectedLanguage == LanguagesEnum.English) {
  //     return en;
  //   } else if (selectedLanguage == LanguagesEnum.Nepali) {
  //     return nep;
  //   }
  // }

  // // for string translation
  // String translate(LanguagesEnum selectedLanguage, String text) {
  //   return to(
  //       selectedLanguage)[text.toString().toLowerCase().replaceAll(" ", "_")];
  // }

  @override
  Map<String, Map<String, String>> get keys => {
        // English US
        "en_US": {
          "home": "Home",
          "category": "Category",
          "cart": "Cart",
          "profile": "Profile",
          "recommended": "Recommended",
          "view_more": "View More",
          "best_deals": "Best Deals",
          "popular": "Popular",
          "new_arrivals": "New Arrivals",
          "all_categories": "All Categories",
          "offers": "Offers",
          "luxury": "Luxury",
          "i_am_searching_for": "I am searching for",
        },

        // Nepali language
        "hi_HI": {
          "home": "घर",
          "category": "श्रेणी",
          "cart": "कार्ट",
          "profile": "प्रोफाइल",
          "recommended": "सिफारिस गरिएको",
          "view_more": "अझ धेरै हेर्नुहोस्",
          "best_deals": "सबै भन्दा राम्रो सम्झौता",
          "popular": "लोकप्रिय",
          "new_arrivals": "नयाँ आगमन",
          "all_categories": "सबै कोटिहरू",
          "i_am_searching_for": "म खोज्दै छु",
          "offers": "अफर ",
          "luxury": "लक्जरी "
        },
      };
}
