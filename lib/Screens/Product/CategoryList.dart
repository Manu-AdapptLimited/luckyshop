import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Container(
        height: 210,
        width: 240,
        decoration: BoxDecoration(
          // color: Color.fromRGBO(233, 97, 39, 1),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              
              child: Container(
                width: 140,
                child: Image.asset(
                  'assets/images/tide.png',
                  height: 120,
                  fit: BoxFit.contain
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Rs 730',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                    ),
                    child: Text('Rs 830',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 28,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child:
                        Text('13% OFF', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
            Positioned(
              left: 5,
              top: 115,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tide Plus Extra Power Jasmi...',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '7kg + 3kg',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 160,
              left: 15,
              child: Container(
                alignment: Alignment.center,
                height: 35,
                width: 210,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 97, 39, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 175,
                        child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'ADD',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ))),
                    Container(
                        width: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(189, 81, 32, 1),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5))),
                        child: IconButton(
                            padding: EdgeInsets.only(left: 5),
                            icon: Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              print("plus button tapped");
                            }))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
