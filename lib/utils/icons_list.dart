import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcons {
  final List<Map<String, dynamic>> homeExpensesCategories = [
    {
      "name": "Utilities",
      "icon": FontAwesomeIcons.lightbulb,
    },
    {
      "name": "Transportation",
      "icon": FontAwesomeIcons.bus,
    },
    {
      "name": "Dining Out",
      "icon": FontAwesomeIcons.utensils,
    },
    {
      "name": "Entertainment",
      "icon": FontAwesomeIcons.film,
    },
    {
      "name": "Internet",
      "icon": FontAwesomeIcons.wifi,
    },
    {
      "name": "Clothing",
      "icon": FontAwesomeIcons.shirt,
    },
    {
      "name": "Others",
      "icon": FontAwesomeIcons.cubes,
    },
  ];

  IconData getExpenseCategoryIcons(String categoryName) {
    final category = homeExpensesCategories.firstWhere(
        (category) => category['name']==categoryName,
        orElse: () => {"icon": FontAwesomeIcons.shirt});
    return category['icon'];
  }
}
