class Productmodel {
  final int id;
  final String name;
  final String img;
  final List<Map<String, dynamic>> sizeOption;
  int counter;
  final String calories;
  final double distance;
  final String decription;
  final double rate;
  int selectedInex;

  Productmodel({
    required this.id,
    required this.name,
    required this.img,
    required this.sizeOption,
    required this.counter,
    required this.calories,
    required this.distance,
    required this.decription,
    required this.rate,
    required this.selectedInex,
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
    counter: 1,
    calories: "44",
    distance: 20,
    decription: "😕 Pizza low calories",
    rate: 4.7,
    selectedInex: 0,
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
    counter: 1,
    calories: "47",
    distance: 20,
    decription: "Shusi new outfit",
    rate: 4.9,
    selectedInex: 0,
  ),
];
