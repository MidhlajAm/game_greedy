import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataControllerx extends GetxController {
  RxList loadData = [
    DataStructure(
      t1: 'Tangled',
      t2: 'Disney',
      t3: 'Pascal',
      price: 3.99,
      image: 'pascal.png',
      color: [
        Color.fromARGB(225, 26, 128, 50),
        Color.fromARGB(225, 157, 212, 113),
        Color.fromARGB(225, 157, 212, 113),
      ],
      rating: 4,
    ),
    DataStructure(
        t1: 'Super',
        t2: '',
        t3: 'Mario Bros',
        price: 7.99,
        image: 'mario-hero.png',
        color: [
          Color.fromARGB(225, 235, 66, 84),
          Color.fromARGB(225, 242, 110, 125),
          Color.fromARGB(225, 226, 120, 128),
        ],
        rating: 2),
    DataStructure(
        t1: 'Angry',
        t2: '',
        t3: 'Bird',
        price: 4.99,
        image: 'angry-bird.png',
        color: [
          Color.fromARGB(225, 236, 203, 82),
          Color.fromARGB(225, 234, 185, 117),
          Color.fromARGB(225, 234, 169, 152),
        ],
        rating: 4.5),
    DataStructure(
        t1: 'Demon Slayer',
        t2: 'Tanjiro',
        t3: 'Kamado',
        price: 9.99,
        image: 'Tanjiro-hero.png',
        color: [
          Color.fromARGB(225, 151, 79, 91),
          Color.fromARGB(200, 151, 79, 91),
          Color.fromARGB(225, 93, 188, 157),
        ],
        rating: 4.8),
    DataStructure(
        t1: 'Tom Holland',
        t2: 'Spider',
        t3: 'Man',
        price: 10.99,
        image: 'spider-hero.png',
        color: [
          Color.fromARGB(225, 237,17,1),
          Color.fromARGB(139, 237, 17, 1),
          Colors.blue,
        ],
        rating: 4.8),
    DataStructure(
        t1: 'Manga',
        t2: 'Naruto',
        t3: 'Uzumaki',
        price: 20.99,
        image: 'naruto-hero.png',
        color: [
          Color.fromARGB(225, 238, 126, 77),
          Color.fromARGB(200, 238, 126, 77),
          Color.fromARGB(225,229,232,66),
        ],
        rating: 4.8),
  ].obs;
}

class DataStructure {
  final String t1;
  final String t2;
  final String t3;
  final double price;
  final String image;
  double rating;
  final List<Color> color;

  DataStructure({
    required this.t1,
    required this.t2,
    required this.t3,
    required this.price,
    required this.image,
    required this.rating,
    required this.color,
  });
  DataStructure copyWith({
    String? t1,
    String? t2,
    String? t3,
    double? price,
    String? image,
    double? rating,
    List<Color>? color,
  }) {
    return DataStructure(
      t1: t1 ?? this.t1,
      t2: t2 ?? this.t2,
      t3: t3 ?? this.t3,
      price: price ?? this.price,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      color: color ?? this.color,
    );
  }
}
