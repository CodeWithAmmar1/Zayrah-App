import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String image;
  final double price;
  final String name;
  const Product({super.key, required this.image, required this.price, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("",  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),centerTitle: 
        true,

      ),
    );
  }
}