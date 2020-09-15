
import 'package:flutter/cupertino.dart';

class Shop with ChangeNotifier {
  final String id;
  final name;
  final image;
  final address;

  Shop({
    this.id,
    this.name,
    this.image,
    this.address,
  });
}


 final  List<Shop> nearShop = [
    Shop(
        id: "1",
        name: 'Nivea Care Shop',//Obchod Nivea Care
        image: 'assets/images/shop6.png',
        address:"Near Hanuman Mandir Tarbahar"),//V blízkosti chrámu Hanuman Tarabahar
    Shop(
        id: "2",
        name: "Saluja Kirana Store",//Obchod Saluja Kirana
        image: 'assets/images/shop1.jpeg',
        address: "Near Bajar Chock , Tifra"),//V blízkosti Bajar Chock, Tifra
    // Shop(
    //     id: '3',
    //     name: 'Chintu Kirana Store',
    //     image: 'assets/images/shop2.jpeg',
    //     address: 'Near Bajar Chock , YadunanDan Nagar'),
    // Shop(
    //     id: '4',
    //     name: 'Chintu Kirana ',
    //     image: 'assets/images/shop4.jpeg',
    //     address: 'Near Bajar Chock , YadunanDan '),
  ];

  

  // Shop findById(String id) {
  //   return nearShop.firstWhere((element) => element.id == id);
  // }

