import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

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