import 'dart:ui';
import 'package:flutter/material.dart';

class Category {
  String id;
  String ImageUrl;
  Color color;
  String title;

  Category(
      {required this.title,
      required this.id,
      required this.color,
      required this.ImageUrl});

  static List<Category> getCategories() {
    return [
      Category(
          title: 'Sports',
          id: 'sports',
          color: Colors.red,
          ImageUrl: 'assets/images/sports.png'),
      Category(
          title: 'General',
          id: 'general',
          color: Colors.green,
          ImageUrl: 'assets/images/Politics.png'),
      Category(
          title: 'Health',
          id: 'health',
          color: Colors.blue,
          ImageUrl: 'assets/images/health.png'),
      Category(
          title: 'Business',
          id: 'business',
          color: Colors.yellow,
          ImageUrl: 'assets/images/bussines.png'),
      Category(
          title: 'Entertainment',
          id: 'entertainment',
          color: Colors.deepPurple,
          ImageUrl: 'assets/images/environment.png'),
      Category(
          title: 'Science',
          id: 'science',
          color: Colors.deepOrangeAccent,
          ImageUrl: 'assets/images/science.png'),
    ];
  }
}
