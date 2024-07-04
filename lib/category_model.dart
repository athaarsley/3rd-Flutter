import 'package:flutter/material.dart';

class CategoryModel {
  final String category;
  final IconData icon;

  CategoryModel({required this.category, required this.icon});
}

final List<CategoryModel> categories = [
  CategoryModel(category: 'Mountain', icon: Icons.terrain),
  CategoryModel(category: 'Clothes', icon: Icons.shield_rounded),
  CategoryModel(category: 'Shoes', icon: Icons.shower_sharp),
  CategoryModel(category: 'Swimsuit', icon: Icons.switch_camera),
  CategoryModel(category: 'Anime', icon: Icons.cabin),
  CategoryModel(category: 'Forest', icon: Icons.park),
  CategoryModel(category: 'Beach', icon: Icons.beach_access),
  CategoryModel(category: 'Hiking', icon: Icons.directions_walk)
];
