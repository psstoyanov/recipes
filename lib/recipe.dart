import 'dart:convert';
import 'dart:math';
import 'dart:ui';

import 'package:faker/faker.dart';

class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe({
    required this.label,
    required this.imageUrl,
    this.servings = 1,
    required this.ingredients,
  });

  static List<Recipe> samples = [
    Recipe(
      label: Faker.withGenerator(random).food.cuisine(),
      imageUrl: Faker.withGenerator(random).image.image(keywords: ['food']),
      servings: 4,
      ingredients: [
        Ingredient(
          Random().nextDouble() * 10,
          Faker.withGenerator(random).lorem.word(),
          Faker.withGenerator(random).food.dish(),
        ),
        Ingredient(
          Random().nextDouble() * 10,
          Faker.withGenerator(random).lorem.word(),
          Faker.withGenerator(random).food.dish(),
        ),
        Ingredient(
          Random().nextDouble() * 10,
          Faker.withGenerator(random).lorem.word(),
          Faker.withGenerator(random).food.dish(),
        ),
        Ingredient(
          Random().nextDouble() * 10,
          Faker.withGenerator(random).lorem.word(),
          Faker.withGenerator(random).food.dish(),
        ),
      ],
    ),
    Recipe(
      label: Faker.withGenerator(random).food.cuisine(),
      imageUrl: Faker.withGenerator(random).image.image(keywords: ['food']),
      servings: 4,
      ingredients: [
        Ingredient(
          Random().nextDouble() * 10,
          Faker.withGenerator(random).lorem.word(),
          Faker.withGenerator(random).food.dish(),
        ),
      ],
    ),
    Recipe(
      label: Faker.withGenerator(random).food.cuisine(),
      imageUrl: Faker.withGenerator(random).image.image(keywords: ['food']),
      servings: 4,
      ingredients: [
        Ingredient(
          Random().nextDouble() * 10,
          Faker.withGenerator(random).lorem.word(),
          Faker.withGenerator(random).food.dish(),
        ),
      ],
    ),
    Recipe(
      label: Faker.withGenerator(random).food.cuisine(),
      imageUrl: Faker.withGenerator(random).image.image(keywords: ['food']),
      servings: 4,
      ingredients: [
        Ingredient(
          Random().nextDouble() * 10,
          Faker.withGenerator(random).lorem.word(),
          Faker.withGenerator(random).food.dish(),
        ),
      ],
    ),
    Recipe(
      label: Faker.withGenerator(random).food.cuisine(),
      imageUrl: Faker.withGenerator(random).image.image(keywords: ['food']),
      servings: 4,
      ingredients: [
        Ingredient(
          Random().nextDouble() * 10,
          Faker.withGenerator(random).lorem.word(),
          Faker.withGenerator(random).food.dish(),
        ),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
