import 'package:flutter/rendering.dart';

class Category {
  String coverImage;
  String name;
  int noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.coverImage,
  });
}

List<Category> categoryList = [
  Category(
    name: 'App Development',
    noOfCourses: 55,
    coverImage: 'lib/assets/app111.png',
  ),
  Category(
    name: 'Accounting',
    noOfCourses: 20,
    coverImage: 'lib/assets/accounting.jpg',
  ),
  Category(
    name: 'Photography',
    noOfCourses: 16,
    coverImage: 'lib/assets/photography.jpg',
  ),
  Category(
    name: 'Product Design',
    noOfCourses: 25,
    coverImage: 'lib/assets/design.jpg',
  ),
  Category(
    name: 'Web Development',
    noOfCourses: 10,
    coverImage: 'lib/assets/web_development.png',
  ),
  Category(
    name: 'Marketing',
    noOfCourses: 18,
    coverImage: 'lib/assets/marketing.png',
  ),
];
