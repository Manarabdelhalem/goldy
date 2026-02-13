// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SilverModel {
  final String name;
  final num price;
 final  String updatedAtReadable;
  final String updatedAt;
  SilverModel({
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

  factory SilverModel.fromMap(Map<String, dynamic> map) {
    return SilverModel(
      name: map['name'] as String,
      price: map['price'] as num,
      updatedAtReadable: map['updatedAtReadable'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

 
}
