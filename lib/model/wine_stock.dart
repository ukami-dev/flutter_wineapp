import 'package:flutter/material.dart';

class WineStock {
  String? price;
  String? title;
  String? subTitle;
  String? imgPath;
  Color? bgColor;
  int? rating;

  WineStock(
      {this.price,
        this.title,
        this.subTitle,
        this.imgPath,
        this.bgColor,
        this.rating});
}

var wines = [
  WineStock(
      price: '\$1299',
      title: 'Mavrose Rose Wine',
      subTitle: '50%Mavrotragano, 50%Avgoustiatis',
      imgPath: 'mavrose.png',
      bgColor: Color(0xFFFECBC2),
      rating: 5),
  WineStock(
      price: '\$999',
      title: 'Heavensake',
      subTitle: 'Junmal Ginjo',
      imgPath: 'heavensake.png',
      bgColor: Color(0xFFB4E8EB),
      rating: 4),
 WineStock(
      price: '\$1500',
      title: 'Gin Ukami',
      subTitle: '42 % vol, power',
      imgPath: 'gin.png',
      bgColor: Color(0xFFB4E8EB),
      rating: 4),
];

var recommendWines = [
  WineStock(
      price: '\$49',
      title: 'Bold Smooth Lush',
      subTitle: 'Camofires + Grilled Cheese',
      imgPath: 'canchardonnay.png',
      bgColor: Color(0xFF6CD7DC),
      rating: 5),
  WineStock(
      price: '\$669',
      title: 'Bold Smooth Lush',
      subTitle: '70cl Bottle in Giftbox / 40%ABV',
      imgPath: 'gin.png',
      bgColor: Color(0xFFF28E90),
      rating: 4),
];
































