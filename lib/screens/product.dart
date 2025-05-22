import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  final String image;
  final double price;
  final String name;
  const Product({
    super.key,
    required this.image,
    required this.price,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
              "Product Detail",
              style: GoogleFonts.cinzel(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 28,
              ),
            )
            .animate()
            .slideX(begin: -0.08, end: 0.0, duration: 600.ms)
            .fadeIn(duration: 600.ms),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Hero(
            tag: name,
            child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(image)),
                  ),
                )
                .animate()
                .slideY(begin: -0.08, end: 0.0, duration: 600.ms)
                .fadeIn(duration: 600.ms),
          ),
          Expanded(
            child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                                name,
                                style: GoogleFonts.cinzel(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                              )
                              .animate()
                              .slideX(begin: -0.078, end: 0.0, duration: 600.ms)
                              .fadeIn(duration: 600.ms),
                        ),
                      ),
                      Align(
                           alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                                "Price : $price",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              )
                              .animate()
                              .slideX(begin: -0.078, end: 0.0, duration: 600.ms)
                              .fadeIn(duration: 600.ms),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                              "Detail : ",
                              style: GoogleFonts.cinzel(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )
                            .animate()
                            .slideX(begin: -0.078, end: 0.0, duration: 600.ms)
                            .fadeIn(duration: 600.ms),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                              "This is a high-quality product made from premium materials, designed for durability and comfort. Perfect for everyday use, it combines functionality with style. Whether you're shopping for yourself or as a gift, this item is a reliable choice that won’t disappoint.",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                            .animate()
                            .slideX(begin: 0.078, end: 0.0, duration: 600.ms)
                            .fadeIn(duration: 600.ms),
                      ),
                    ],
                  ),
                )
                .animate()
                .slideY(begin: 0.078, end: 0.0, duration: 600.ms)
                .fadeIn(duration: 600.ms),
          ),
        ],
      ),
    );
  }
}
