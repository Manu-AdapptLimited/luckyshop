import 'package:e_comshop/Models/Data.dart';
import 'package:e_comshop/Screens/Product/ProductScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Widgets/Widget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Shops()),
      ],
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E_ComShop',
        theme: ThemeData(
        backgroundColor:  Color.fromRGBO(78, 231, 200, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:ProductScreen(),
      ),
    );
  }
}

