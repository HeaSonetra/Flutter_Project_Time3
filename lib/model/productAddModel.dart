

class Productaddmodel {
  final int id;
  final int productID;
  final String name;
  final double weight;
  final double price;
  final String img;
  final List selectAddIndex;

  Productaddmodel({required this.id, required this.productID, required this.name, required this.weight, required this.price, required this.img,required this.selectAddIndex});
}

List<Productaddmodel> listProductAdd =[
  Productaddmodel(id: 1, productID: 1, name: "chicken", weight: 4.5, price: 2.3, img: "assets/chicken.webp",selectAddIndex: []),
  Productaddmodel(id: 2, productID: 2, name: "chicken", weight: 4.5, price: 2.4, img: "assets/chicken.webp",selectAddIndex: []),
  Productaddmodel(id: 3, productID: 1, name: "chicken", weight: 4.5, price: 2.5, img: "assets/chicken.webp",selectAddIndex: []),
  Productaddmodel(id: 4, productID: 1, name: "chicken", weight: 4.5, price: 2.7, img: "assets/chicken.webp",selectAddIndex: []),
  Productaddmodel(id: 5, productID: 2, name: "chicken", weight: 4.5, price: 2.8, img: "assets/chicken.webp",selectAddIndex: []),
  Productaddmodel(id: 6, productID: 1, name: "chicken", weight: 4.5, price: 2.9, img: "assets/chicken.webp",selectAddIndex: []),
  
];