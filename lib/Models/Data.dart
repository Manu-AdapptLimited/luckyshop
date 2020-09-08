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

class Shops with ChangeNotifier {
  List<Shop> _nearShop = [
    Shop(
        id: "1",
        name: 'Nivea Care Shop',
        image: 'assets/images/shop6.png',
        address: 'Near Hanuman Mandir Tarbahar'),
    Shop(
        id: "2",
        name: 'Saluja Kirana Store',
        image: 'assets/images/shop1.jpeg',
        address: 'Near Bajar Chock , Tifra'),
    Shop(
        id: '3',
        name: 'Chintu Kirana Store',
        image: 'assets/images/shop2.jpeg',
        address: 'Near Bajar Chock , YadunanDan Nagar'),
    Shop(
        id: '4',
        name: 'Chintu Kirana ',
        image: 'assets/images/shop4.jpeg',
        address: 'Near Bajar Chock , YadunanDan '),
  ];

  List<Shop> get items {
    return [..._nearShop];
  }

  Shop findById(String id) {
    return _nearShop.firstWhere((element) => element.id == id);
  }
}
