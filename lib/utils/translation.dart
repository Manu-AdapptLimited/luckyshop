import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Localization',

        },
        'sk_SK': {
          'title': 'Lokalizácia',
        }
        
      };
}
