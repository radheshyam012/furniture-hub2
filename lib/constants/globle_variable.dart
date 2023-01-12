import 'package:flutter/material.dart';

//String uri = 'http://192.168.171.181:3000';
String uri = 'http://192.168.1.11:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const appColor = Color.fromARGB(255, 29, 201, 192);
  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://goodhomes.wwmindia.com/content/2018/jul/josiecon15090272621531747713.jpg',
    'https://evolveindia.co/wp-content/uploads/2021/07/1_The-Wooden-Rhapsody-Modern-Bedroom-Interior-Design.jpg',
    'https://img.edilportale.com/product-thumbs/2b_36e8-0489-tv-cabinet-lago-517225-relf35419b2.jpg',
    'https://img.edilportale.com/product-thumbs/b_SLIM-Wardrobe-mary-606422-rel78ffefcc.jpg?1669289032836',
    'https://img.edilportale.com/product-thumbs/b_miria-cabinet-door-gidea-147828-relb0d281f1.jpg',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Beds',
      'image': 'assets/images/beds.png',
    },
    {
      'title': 'Cabinets',
      'image': 'assets/images/cabinats.jpg',
    },
    {
      'title': 'Sofas',
      'image': 'assets/images/sofas.jpg',
    },
    {
      'title': 'Armchairs',
      'image': 'assets/images/armchair.jpg',
    },
    {
      'title': 'StorageUnits',
      'image': 'assets/images/storage.jpg',
    },
    {
      'title': 'Desks',
      'image': 'assets/images/desks.png',
    },
    {
      'title': 'Tables',
      'image': 'assets/images/table.png',
    },
    {
      'title': 'Cupboard',
      'image': 'assets/images/cupboard.png',
    },
  ];

  static const List<Map<String, String>> pfsImages = [
    {
      'title': 'Top picks under ₹1999',
      'image':
          'https://res.cloudinary.com/dcehoyjuc/image/upload/v1670316940/banner/tltbyfivghomzwuszddp.png',
    },
    {
      'title': 'Top picks under ₹2999',
      'image':
          'https://res.cloudinary.com/dcehoyjuc/image/upload/v1670316940/banner/q1fputnznxbgsv8cyzmj.png',
    },
    {
      'title': 'Top picks under ₹3999',
      'image':
          'https://res.cloudinary.com/dcehoyjuc/image/upload/v1670316940/banner/r4abffuzehu2jjttqmgg.png',
    },
    {
      'title': 'Top picks under ₹4999',
      'image':
          'https://res.cloudinary.com/dcehoyjuc/image/upload/v1670316940/banner/gz2mubbrmzd9xza0cw7b.png',
    },
  ];
}
