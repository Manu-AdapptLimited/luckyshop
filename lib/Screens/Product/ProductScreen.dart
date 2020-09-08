import 'package:e_comshop/Screens/Product/ProductGridBuilder.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(78, 231, 200, 1),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
            // onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          title: Text(
            'Category',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  print('search button tapped');
                }),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(
              //   height: 10,
              // ),
              ProductGridBuilder(),
            ],
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
