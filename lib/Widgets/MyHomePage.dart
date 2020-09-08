import 'package:e_comshop/Models/Category.dart';
import 'package:e_comshop/Models/Data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

    final shop = Provider.of<Shops>(context);
    final nearShop = shop.items;
    // final nestedAccess = categories[0]["category"];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            ShopAppBar(
              title: 'E_ComShop',
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
                ? mobileGridView(orientation: orientation,nearShop:nearShop)
                : tabGridView(orientation: orientation,nearShop:nearShop),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}

Widget mobileGridView({@required Orientation orientation, nearShop}) {
  return SliverGrid(
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        return ShopGridList(shopList: nearShop[index]);
      },
      childCount: nearShop.length,
    ),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
      childAspectRatio: orientation == Orientation.portrait ? 1.8 : 1.6,
    ),
  );
}

Widget tabGridView({@required Orientation orientation, nearShop}) {
  return SliverGrid(
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        return ShopGridList(shopList: nearShop[index]);
      },
      childCount: nearShop.length,
    ),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
      childAspectRatio: orientation == Orientation.portrait ? 1.8 : 1.6,
    ),
  );
}
