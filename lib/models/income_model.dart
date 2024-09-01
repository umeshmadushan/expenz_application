import 'package:flutter/material.dart';

enum IncomeCategory {
  freelance,
  salary,
  passive,
  sales,
}

// category images
final Map<IncomeCategory, String> incomeCategoryImages = {
  IncomeCategory.freelance : "assets/images/freelance.png",
  IncomeCategory.sales : "assets/images/salary.png",
  IncomeCategory.passive : "assets/images/car.png",
  IncomeCategory.salary : "assets/images/health.png",
};

//category colors
final Map<IncomeCategory, Color> incomeCategoryColors = {
  IncomeCategory.freelance: const Color(0xFFE57373),
  IncomeCategory.passive: const Color(0xFF81C784),
  IncomeCategory.sales: const Color(0xFF64B5F6),
  IncomeCategory.salary: const Color(0xFFFFD54F),
};

class IncomeModel {
  final int id;
  final String title;
  final double amount;
  final IncomeCategory category;
  final DateTime date;
  final DateTime time;
  final String description;

  IncomeModel({
    required this.id,
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
    required this.time,
    required this.description,
  });
}
