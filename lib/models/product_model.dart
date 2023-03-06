class ProductModel {
  int id;
  String name;
  String image;
  String description;
  String price;
  ProductModel(this.id, this.name, this.image, this.description, this.price);
}

List<ProductModel> productInfo = [
  ProductModel(
      1,
      "Nike Jordan",
      "assets/nike_airjordan.png",
      "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....",
      "\$493.00"),
  ProductModel(
      2,
      "Nike Air Max",
      "assets/nike_jordan.png",
      "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....",
      "\$897.99"),
  ProductModel(
      3,
      "Nike Air Jordan",
      "assets/nike_air_max.png",
      "Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....",
      "\$849.69"),
];
