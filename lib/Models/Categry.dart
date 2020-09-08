




import 'package:e_comshop/Models/Category.dart';

class Category {
  final name;
  final image;
  final List<Product> products;

  Category({this.image, this.name, this.products});
}

final List<Category> categories = [
  Category(
     name: "Weekly Top Caregory For You",
      image: "assets/images/shop5.jpg",
      products: product,
  )

];
