enum Complexity {
  simple,
  medium,
  difficult,
}

enum Cost {
  cheap,
  fair,
  expensive,
}

class Recipe {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const Recipe({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Fácil';
      case Complexity.medium:
        return 'Intermediário';
      case Complexity.difficult:
        return 'Difícil';
      default:
        return 'Desconhecido';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return 'Barato';
      case Cost.fair:
        return 'Intermediário';
      case Cost.expensive:
        return 'Caro';
      default:
        return 'Desconhecido';
    }
  }
}
