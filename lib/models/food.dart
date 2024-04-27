class Food {
  final String name;
  final String? description;
  final double calories;
  final double proteins;
  final double carbs;
  final double fats;
  final String? imgURL;

  Food({
    required this.name,
    this.description,
    required this.calories,
    required this.proteins,
    required this.carbs,
    required this.fats,
    this.imgURL,
  });
}
