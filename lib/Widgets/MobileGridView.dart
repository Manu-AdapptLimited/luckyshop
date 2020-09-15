import 'package:e_comshop/Widgets/ShopGridItem.dart';
import 'package:flutter/material.dart';

class MobileGridView extends StatelessWidget {
  final Orientation orientation;
  final nearShop;

  const MobileGridView({Key key, this.orientation, this.nearShop}) : super(key: key);
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
      crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
      childAspectRatio: orientation == Orientation.portrait ? 2.1 : 2.1,
    ),
  );
  }
}
