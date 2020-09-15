import 'package:e_comshop/Widgets/ShopGridItem.dart';
import 'package:flutter/material.dart';


class TabGridView extends StatelessWidget {
  final Orientation orientation;
  final nearShop;

  const TabGridView({Key key, this.orientation, this.nearShop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        return ShopGridItem(shopList: nearShop[index]);
      },
      childCount: nearShop.length,
    ),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
      childAspectRatio: orientation == Orientation.portrait ? 1.8 : 1.6,
    ),
  );
  }
}