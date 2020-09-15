// import 'package:dynamic_theme/dynamic_theme.dart';
// import 'package:e_comshop/theme.dart';
// import 'package:dynamic_theme/dynamic_theme.dart';
// import 'package:e_comshop/theme.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:theme_provider/theme_provider.dart';

import 'package:e_comshop/utils/translation.dart';
// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/localization_delegate.dart';
import 'package:flutter_translate/localization_provider.dart';
import 'package:flutter_translate/localized_app.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;

// import 'App_theme.dart';
// import 'App_theme.dart';
import 'Widgets/Widget.dart';
// import 'app_localizations.dart';
// import 'app_localizations.dart';

void main() {
  runApp(
      // EasyLocalization(
      //   supportedLocales: [
      //     Locale('en', 'US'),
      //     Locale('sk', 'SK')],
      //   path: 'lan', 
      //   fallbackLocale: Locale('en', 'US'),
      // child: 
      MyApp());
  //  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: ui.window.locale,
      title: 'E_comShop',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      //  locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      translations: MyTranslations(),

      
    );
  }
}











// void main() async
// {
//   var delegate = await LocalizationDelegate.create(
//         fallbackLocale: 'en_US',
//         supportedLocales: ['en_US', 'sk_SK']);

//   runApp(LocalizedApp(delegate, MyApp()));
// }


// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

//     var localizationDelegate = LocalizedApp.of(context).delegate;

//     return LocalizationProvider(
//       state: LocalizationProvider.of(context).state,
//       child: MaterialApp(
//         title: 'Flutter Translate Demo',
//         localizationsDelegates: [
//           GlobalMaterialLocalizations.delegate,
//           GlobalWidgetsLocalizations.delegate,
//           localizationDelegate
//         ],
//         supportedLocales: localizationDelegate.supportedLocales,
//         locale: localizationDelegate.currentLocale,
//         theme: ThemeData(primarySwatch: Colors.blue),
//         home: MyHomePage(),
//         ),
//       );
//   }
// }











// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       // locale: ui.window.locale,
//       title: 'E_comShop',
//       debugShowCheckedModeBanner: false,
//       // theme: AppThemes.lightTheme,
//       // darkTheme: AppThemes.darkTheme,
//       locale: Locale('en','US'),
//       translations: MyTranslations(),
//       // localizationsDelegates: context.localizationDelegates,
//       // supportedLocales: context.supportedLocales,
//       // locale: context.locale,

//          supportedLocales: [
//           Locale('en','US'),
//           Locale('sk','SK'),
//         ],
      //   localizationsDelegates: [
      //     AppLocalizations.delegate,
      //     GlobalMaterialLocalizations.delegate,
      //     GlobalWidgetsLocalizations.delegate
      //   ],
      //  localeResolutionCallback: (locale, supportedLocales) {

      //     for (var supportedLocale in supportedLocales) {
      //       if (supportedLocale.languageCode == locale.languageCode &&
      //           supportedLocale.countryCode == locale.countryCode) {
      //         return supportedLocale;
      //       }
      //     }

        //   return supportedLocales.first;
        // },
//       home: MyHomePage(),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//   title: 'E_ComeSop',
//   debugShowCheckedModeBanner: false,
//  theme: ThemeData(
//   brightness: WidgetsBinding.instance.window.platformBrightness,
// ),
//   home: MyHomePage(),
// );
//   }
// }

//dynemic Theme package

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DynamicTheme(
//       data: (Brightness brightness) => brightness == Brightness.light
//           ? AppThemes.lightTheme
//           : AppThemes.darkTheme,
//       themedWidgetBuilder: (BuildContext context, ThemeData theme) =>
//           MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: theme,
//         title: 'E_ComShop',
//         home: MyHomePage(),
//       ),
//     );
//   }
// }

// ThemeProvider Package

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ThemeProvider(
//       saveThemesOnChange: true, // Auto save any theme change we do
//       loadThemeOnInit:
//           false, // Do not load the saved theme(use onInitCallback callback)
//       onInitCallback: (controller, previouslySavedThemeFuture) async {
//         String savedTheme = await previouslySavedThemeFuture;

//         if (savedTheme != null) {
//           // If previous theme saved, use saved theme
//           controller.setTheme(savedTheme);
//         } else {
//           // If previous theme not found, use platform default
//           Brightness platformBrightness =
//               SchedulerBinding.instance.window.platformBrightness;
//           if (platformBrightness == Brightness.dark) {
//             controller.setTheme('dark');
//           } else {
//             controller.setTheme('light');
//           }
//           // Forget the saved theme(which were saved just now by previous lines)
//           controller.forgetSavedTheme();
//         }
//       },
//       themes: <AppTheme>[
//         AppTheme.light(
//           id: 'light',
//         ),
//         AppTheme.dark(id: 'dark'),
//       ],
//       child: ThemeConsumer(
//         child: Builder(
//           builder: (themeContext) => MaterialApp(
//             debugShowCheckedModeBanner: false,
//             theme: ThemeProvider.themeOf(themeContext).data,
//             title: 'Material App',
//             home: MyHomePage(),
//           ),
//         ),
//       ),
//     );
//   }
// }

//Provider Package

// void main() {
//    runApp(
//     ChangeNotifierProvider<ThemeProvider>(
//         child: MyApp(),
//         create: (BuildContext context) {
//           return ThemeProvider(isDarkMode: false);
//         }),
//   );

// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeProvider>(
//       builder: (context, themeProvider, child) {
//         return MaterialApp(
//           title: 'E_ComeSop',
//           debugShowCheckedModeBanner: false,
//           theme: themeProvider.getTheme,
//           home: MyHomePage(),
//         );
//       },
//     );
//   }
// }
