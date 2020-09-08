
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
        title: 'Tide Plus Extra Power Jasmi...',
        img: 'assets/images/tide.png',
        newPrice: "730",
        oldPrice: "840",
        discount: "13%",
        quantity: ""
        ),
    Product(
        id: "2",
        title: 'Saluja Kirana Store',
        img: 'assets/images/pdt3.jpg',
        newPrice: "74",
        oldPrice: "89",
        discount: "13%",
        quantity: ""
        ),
    Product(
        id: '3',
        title: 'Chintu Kirana Store',
        img: 'assets/images/pdt8.jpg',
        newPrice: "74",
        oldPrice: "89",
        discount: "13%",
        quantity: ""),
    Product(
        id: '4',
        title: 'Chintu Kirana ',
        img: 'assets/images/pdt6.jpg',
        newPrice: "74",
        oldPrice: "89",
        discount: "13%",
        quantity: ""),
];


