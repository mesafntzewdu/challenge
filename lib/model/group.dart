// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import '../data/dummy.dart';

class Challenge {
  String name;
  String description;
  Category category;
  String image;

  Challenge({
    required this.name,
    required this.description,
    required this.category,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'category': category,
      'image': image,
    };
  }

  factory Challenge.fromMap(Map<String, dynamic> map) {
    return Challenge(
      name: map['name'] as String,
      description: map['description'] as String,
      category: map['category'] as Category,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Challenge.fromJson(String source) =>
      Challenge.fromMap(json.decode(source) as Map<String, dynamic>);
}
