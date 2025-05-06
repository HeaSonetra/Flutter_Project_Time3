class Productmodel {
  final int id;
  final String name;
  final String img;
  final List<Map<String, dynamic>> sizeOption;
  final int qty;
  final String calories;
  final double distance;
  final String decription;
  final double rate;
  

  Productmodel({
    required this.id,
    required this.name,
    required this.img,
    required this.sizeOption,
    required this.qty,
    required this.calories,
    required this.distance,
    required this.decription,
    required this.rate,
    
  });
}

List<Productmodel> listproduct = [
  Productmodel(
    id: 1,
    name: "Pizza",
    img: "assets/pizza.png",
    sizeOption: [
      {"size": "small", "price": 10.0},
      {"size": "mediem", "price": 10.5},
     // {"size": "large", "price": 10.99},
    ],
    qty: 10,
    calories: "44",
    distance: 20,
    decription: "😕 Pizza low calories",
    rate: 4.7,
  ),
  Productmodel(
    id: 2,
    name: "Shusi",
    img: "assets/shusi.png",
    sizeOption: [
      {"size": "small", "price": 10.0},
      {"size": "mediem", "price": 10.5},
      {"size": "large", "price": 10.99},
    ],
    qty: 10,
    calories: "47",
    distance: 20,
    decription: "Shusi new outfit",
    rate: 4.9,
  ),
];
