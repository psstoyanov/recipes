import 'dart:ui';

import 'package:faker/faker.dart';
class Recipe {
  String label;
  String imageUrl;

  Recipe(
    this.label,
    this.imageUrl,
  );

  
  static List<Recipe> samples = [
    Recipe(Faker.withGenerator(random).food.cuisine(),
    Faker.withGenerator(random).image.image()),
    Recipe(Faker.withGenerator(random).food.cuisine(),
    Faker.withGenerator(random).image.image()),
    Recipe(Faker.withGenerator(random).food.cuisine(),
    Faker.withGenerator(random).image.image()),
    Recipe(Faker.withGenerator(random).food.cuisine(),
    Faker.withGenerator(random).image.image()),
    Recipe(Faker.withGenerator(random).food.cuisine(),
    Faker.withGenerator(random).image.image()),
    Recipe(Faker.withGenerator(random).food.cuisine(),
    Faker.withGenerator(random).image.image()),
    Recipe(Faker.withGenerator(random).food.cuisine(),
    Faker.withGenerator(random).image.image()),
  ];
}