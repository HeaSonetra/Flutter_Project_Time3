class Productmodel {
  final int id;
  final String name;
  final String img;
  final List<Map<String, dynamic>> sizeOption;
  final int qty;
  final String calories;
  final double distance;

  Productmodel({
    required this.id,
    required this.name,
    required this.img,
    required this.sizeOption,
    required this.qty,
    required this.calories,
    required this.distance,
  });
}

List<Productmodel> listproduct = [
  Productmodel(
    id: 1,
    name: "Pizza",
    img: "assets/pizza.png",
    sizeOption: [
      {"size": "small", "price": 10},
      {"size": "mediem", "price": 10.5},
      {"size": "large", "price": 10.99},
    ],
    qty: 10,
    calories: "",
    distance: 20,
  ),
  Productmodel(
    id: 1,
    name: "Pizza",
    img: "assets/pizza.png",
    sizeOption: [
      {"size": "small", "price": 10},
      {"size": "mediem", "price": 10.5},
      {"size": "large", "price": 10.99},
    ],
    qty: 10,
    calories: "",
    distance: 20,
  ),
];
