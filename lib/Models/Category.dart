
class Product {
  final id;
  final title;
  final img;
  final newPrice;
  final oldPrice;
  final discount;
  final quantity;

  Product(
      {this.id,
      this.title,
      this.img,
      this.newPrice,
      this.oldPrice,
      this.discount,
      this.quantity});
}

final List<Product> product = [
  Product(
        id: "1",
        title: 'Nivea Care Shop',
        img: 'assets/images/shop6.png',
        newPrice: "74",
        oldPrice: "89",
        discount: "13%",
        quantity: ""
        ),
    Product(
        id: "2",
        title: 'Saluja Kirana Store',
        img: 'assets/images/shop1.jpeg',
        newPrice: "74",
        oldPrice: "89",
        discount: "13%",
        quantity: ""
        ),
    Product(
        id: '3',
        title: 'Chintu Kirana Store',
        img: 'assets/images/shop2.jpeg',
        newPrice: "74",
        oldPrice: "89",
        discount: "13%",
        quantity: ""),
    Product(
        id: '4',
        title: 'Chintu Kirana ',
        img: 'assets/images/shop4.jpeg',
        newPrice: "74",
        oldPrice: "89",
        discount: "13%",
        quantity: ""),
];

// final List<Category> categories = [
//   Category(
//       name: "Weekly Top Caregory For You",
//       image: "assets/images/shop5.jpg",
//       product:
//         Product(
//             id: 1,
//             title: 'tide',
//             img: 'assets/images/shop3.jpeg',
//             newPrice: 730,
//             oldPrice: 840,
//             discount: '13%',
//             quantity: ''),

//       )
// ];
