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
