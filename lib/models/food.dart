class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  final List<Addon> addons;

  Food(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.category,
      required this.addons});
}

//food categories
enum FoodCategory { burgers, salads, sides, desserts, drinks }

//addons
class Addon {
  final String name;
  final double price;

  Addon({required this.name, required this.price});
}
