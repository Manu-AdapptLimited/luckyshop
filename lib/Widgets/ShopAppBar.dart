// import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:e_comshop/theme.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:theme_provider/theme_provider.dart';

import '../App_theme.dart';
import 'package:get/get.dart';

class ShopAppBar extends StatelessWidget {
  final title;
  final searchIcon;
  const ShopAppBar({Key key, this.title, this.searchIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // void toggleTheme() {
    //   //toggle the theme from dark to light
    //   Brightness currentBrightness = DynamicTheme.of(context).brightness;
    //   DynamicTheme.of(context).setBrightness(
    //       currentBrightness == Brightness.light
    //           ? Brightness.dark
    //           : Brightness.light);
    // }

    return SliverAppBar(
      forceElevated: true,
      pinned: true,
      stretch: true,
      backgroundColor: Color.fromRGBO(78, 231, 200, 1),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      ),
      actions: [
        //Theme Provider Package
        // CycleThemeIconButton(),
        IconButton(
          onPressed: () {
            Get.updateLocale(Locale('sk', 'SK'));
          
            //dynamic Package
            // toggleTheme();

            //Provider Package

            // ThemeProvider themeProvider =
            //     Provider.of<ThemeProvider>(context, listen: false);
            // themeProvider.swapTheme();

            //GetX Package

            if (Get.isDarkMode) {
              Get.changeTheme(AppThemes.lightTheme);
            } else {
              Get.changeTheme(AppThemes.darkTheme);
            }
          },
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
