import 'package:material_ui/material_ui.dart';

import 'models/food.dart';
import 'models/food_category.dart';

/// Sample data used until the app is connected to a real API.
class FakeData {
  FakeData._();

  static const categories = [
    FoodCategory(id: 'snacks', name: 'Snacks', icon: Icons.cookie_outlined),
    FoodCategory(id: 'meal', name: 'Meal', icon: Icons.restaurant),
    FoodCategory(id: 'vegan', name: 'Vegan', icon: Icons.eco_outlined),
    FoodCategory(id: 'dessert', name: 'Dessert', icon: Icons.cake_outlined),
    FoodCategory(id: 'drinks', name: 'Drinks', icon: Icons.local_drink_outlined),
  ];

  static const foods = [
    Food(id: '1', name: 'Sushi Roll', description: 'Fresh salmon and rice', price: 103.0, categoryId: 'meal'),
    Food(id: '2', name: 'Chicken Curry', description: 'Spicy curry with rice', price: 50.0, categoryId: 'meal'),
    Food(id: '3', name: 'Vegan Lasagna', description: 'Layers of vegetables', price: 12.99, categoryId: 'vegan'),
    Food(id: '4', name: 'Berry Cupcake', description: 'Cream and fresh berries', price: 8.20, categoryId: 'dessert'),
    Food(id: '5', name: 'Classic Burger', description: 'Beef, cheese and tomato', price: 10.0, categoryId: 'snacks'),
    Food(id: '6', name: 'Spring Rolls', description: 'Crispy vegetable rolls', price: 25.0, categoryId: 'snacks'),
  ];
}
