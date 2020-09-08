import 'package:flutter/material.dart';

class ShopAppBar extends StatelessWidget {
  final title;
  final searchIcon;
  const ShopAppBar({Key key, this.title, this.searchIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        IconButton(
            icon: searchIcon,
            color: Colors.black,
            onPressed: () {
              print('search button tapped');
            }),
      ],
    );
  }
}
