import 'package:flutter/material.dart';

final List<AppBottomBarItem> barItems = [
  AppBottomBarItem(icon: Icons.home, label: 'Home', isSelected: true),
  AppBottomBarItem(icon: Icons.explore, label: 'Explore', isSelected: false),
  AppBottomBarItem(icon: Icons.turned_in_not, label: 'Tag', isSelected: false),
  AppBottomBarItem(icon: Icons.person_outline, label: 'Profile', isSelected: false)
];

class AppBottomBarItem {
  IconData? icon;
  bool isSelected; 
  String label;

  AppBottomBarItem({
    this.icon,
    this.label = '',
    this.isSelected = false
  });
}
