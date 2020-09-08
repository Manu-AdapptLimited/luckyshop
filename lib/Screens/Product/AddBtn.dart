import 'package:flutter/material.dart';


class AddBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
     Positioned(
              top: 160,
              left: 10,
              child: Container(
                alignment: Alignment.center,
                height: 35,
                width: 190,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 97, 39, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 155,
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
            );
  }
}