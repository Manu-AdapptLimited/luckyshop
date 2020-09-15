import 'package:e_comshop/Models/Models.dart';
import 'package:e_comshop/Widgets/MobileGridView.dart';
import 'package:e_comshop/Widgets/TabGridView.dart';
// import 'package:e_comshop/app_localizations.dart';
// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:get/get.dart';

import 'Widget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600;
    final Orientation orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
       
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            ShopAppBar(
              title:'title'.tr,
              // title: translate('title'),
              searchIcon: Icon(Icons.search),
            ),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (context, index) {
            //       return ShopList(
            //         shopList: nearShop[index],
            //       );
            //     },
            //     childCount: nearShop.length,
            //   ),
            // ),
            useMobileLayout
                ? MobileGridView(orientation: orientation, nearShop: nearShop)
                : TabGridView(orientation: orientation, nearShop: nearShop),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}
