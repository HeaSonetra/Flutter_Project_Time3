

class Productaddmodel {
  final int id;
  final int productID;
  final String name;
  final double weight;
  final double price;
  final String img;

  Productaddmodel({required this.id, required this.productID, required this.name, required this.weight, required this.price, required this.img});
}

List<Productaddmodel> listProductAdd =[
  Productaddmodel(id: 1, productID: 1, name: "chicken", weight: 4.5, price: 2.3, img: "assets/chicken.webp"),
  Productaddmodel(id: 2, productID: 1, name: "chheese", weight: 6.5, price: 4.3, img: "assets/chicken.webp"),
  Productaddmodel(id: 3, productID: 2, name: "chheese", weight: 6.5, price: 4.3, img: "assets/chicken.webp"),
];