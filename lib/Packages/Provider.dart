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
