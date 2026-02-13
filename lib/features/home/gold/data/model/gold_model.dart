// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GoldModel {
  final String name;
  final num price;
 final  String updatedAtReadable;
  final String updatedAt;
  GoldModel({
    required this.name,
    required this.price,
    required this.updatedAtReadable,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'updatedAtReadable': updatedAtReadable,
      'updatedAt': updatedAt,
    };
  }

  factory GoldModel.fromMap(Map<String, dynamic> map) {
    return GoldModel(
      name: map['name'] as String,
      price: map['price'] as num,
      updatedAtReadable: map['updatedAtReadable'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

 
}
