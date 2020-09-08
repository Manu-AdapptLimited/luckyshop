import 'package:e_comshop/Screens/Product/CounterBtn.dart';
import 'package:flutter/material.dart';

import 'AddBtn.dart';

class CategoryList extends StatelessWidget {
  final title;
  final img;
  final newPrice;
  final oldprice;
  final discount;
  final quantity;
   final bool isAdded;

  const CategoryList(
      {Key key,
      this.title,
      this.img,
      this.newPrice,
      this.oldprice,
      this.discount,
      this.quantity,
      this.isAdded
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Container(
        // height: 210,
        // width: 260,
        decoration: BoxDecoration(
          // color: Color.fromRGBO(233, 97, 39, 1),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                child: Image.asset(img,
                    width: 100, height: 100, fit: BoxFit.cover),
              ),
            ),
            Positioned(
              right: 20,
              top: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\u{20B9}$newPrice',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                    ),
                    child: Text('\u{20B9}$oldprice',
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 16,
                            color: Colors.black54)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 28,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text('${discount}OFF',
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
            Positioned(
              left: 8,
              top: 115,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    quantity,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
           isAdded==true? CounterBtn():AddBtn(),
          ],
        ),
      ),
    );
  }
}
