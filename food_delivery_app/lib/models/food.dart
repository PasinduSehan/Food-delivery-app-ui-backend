//food iteam
class Food {
  final String name;
  final String description;
  final String imagepath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagepath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food category
enum FoodCategory {
  burger,
  salads,
  sides,
  desserts,
  drinks,
}

//food addons
class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
