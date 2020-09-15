
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