import 'package:e_comshop/Models/Categry.dart';
import 'package:e_comshop/Screens/Product/CategoryList.dart';
import 'package:flutter/material.dart';

class ProductGridBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemCount = categories[0].products;
    return Container(
      padding: EdgeInsets.only(left: 15),
      height: 495,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(233, 97, 39, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, top: 10),
            height: 40,
            child: Text(
              'BEST OF EVERYDAY ESSENTIELS',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0),
                itemCount: itemCount.length + 1,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  if (index == itemCount.length) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      child: Container(
                        alignment: Alignment.center,
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'See All ',
                            style: TextStyle(
                              color: Color.fromRGBO(233, 97, 39, 1),
                               fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: '>',
                            style: TextStyle(
                              color: Color.fromRGBO(233, 97, 39, 1),
                              fontSize: 17,
                            ),
                          )
                        ])),
                      ),
                    );
                  }

                  return CategoryList(
                      title: itemCount[index].title,
                      img: itemCount[index].img,
                      newPrice: itemCount[index].newPrice,
                      oldprice: itemCount[index].oldPrice,
                      discount: itemCount[index].discount,
                      quantity: itemCount[index].quantity,
                      isAdded: itemCount[index].isAdded);
                }),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
