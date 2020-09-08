class Product {
  final id;
  final title;
  final img;
  final newPrice;
  final oldPrice;
  final discount;
  final quantity;
  bool isAdded;

  Product(
      {
        this.id,
      this.title,
      this.img,
      this.newPrice,
      this.oldPrice,
      this.discount,
      this.quantity,
      this.isAdded
      });
}

final List<Product> product = [
  Product(
      id: "1",
      title: 'Tide Plus Extra Power Jasmi...',
      img: 'assets/images/tide.png',
      newPrice: "730",
      oldPrice: "840",
      discount: "13%",
      quantity: "7kg + 3kg",
      isAdded: true,
      ),
  Product(
      id: "2",
      title: 'Sharp Cheddar',
      img: 'assets/images/pdt3.jpg',
      newPrice: "174",
      oldPrice: "189",
      discount: "15%",
      quantity: "500g",
       isAdded: false,
      ),
  Product(
      id: '3',
      title: 'SKIPPY',
      img: 'assets/images/pdt8.jpg',
      newPrice: "74",
      oldPrice: "89",
      discount: "10%",
      quantity: "250g",
       isAdded: false,
      ),
  Product(
      id: '4',
      title: 'Colin ',
      img: 'assets/images/pdt6.jpg',
      newPrice: "104",
      oldPrice: "109",
      discount: "12%",
      quantity: "250g",
       isAdded: true,
      ),
       Product(
      id: '5',
      title: 'Colin ',
      img: 'assets/images/pdt6.jpg',
      newPrice: "104",
      oldPrice: "109",
      discount: "12%",
      quantity: "250g",
       isAdded: true,
      ),
];
