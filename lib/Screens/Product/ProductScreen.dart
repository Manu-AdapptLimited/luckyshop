import 'package:e_comshop/Screens/Product/CategoryList.dart';
import 'package:e_comshop/Widgets/ShopAppBar.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        body: CategoryList(),
    ),);
  }
}
