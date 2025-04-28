class Categorymodel {
  final int id;
  final String emoji;
  final String name;

  Categorymodel({required this.id, required this.emoji, required this.name});
}

List<Categorymodel> listCategory = [
  Categorymodel(id: 1, emoji: "🍖", name: "meat"),
  Categorymodel(id: 2, emoji: "🍔", name: "Burger"),
  Categorymodel(id: 3, emoji: "🍣", name: "Sushi"),
  Categorymodel(id: 4, emoji: "🍺", name: "Drink"),
];
