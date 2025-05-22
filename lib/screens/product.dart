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
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
        Center(
          child: Text(
            name,
            style: GoogleFonts.cinzel(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 28,
              letterSpacing: 1.5,
            ),
          )
          .animate()
          .slideX(begin: -0.08, end: 0.0, duration: 600.ms)
          .fadeIn(duration: 600.ms),
        ),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Price: \$${price.toString()}",
            style: GoogleFonts.poppins(
              color: Colors.amberAccent,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )
          .animate()
          .slideX(begin: 0.08, end: 0.0, duration: 600.ms)
          .fadeIn(duration: 600.ms),
        ),
        SizedBox(height: 20),
        Text(
          "Product Details",
          style: GoogleFonts.cinzel(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 1,
          ),
        )
        .animate()
        .slideX(begin: -0.06, end: 0.0, duration: 600.ms)
        .fadeIn(duration: 600.ms),
        SizedBox(height: 10),
        Text(
          "This is a high-quality product crafted from premium materials, ensuring durability, comfort, and timeless style. Ideal for everyday use or as a thoughtful gift. Experience functionality and elegance in one package.",
          style: GoogleFonts.poppins(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(0.9),
            fontSize: 15,
            height: 1.4,
          ),
        )
        .animate()
        .slideY(begin: 0.06, end: 0.0, duration: 600.ms)
        .fadeIn(duration: 600.ms),
      ],
    ),
  )
  .animate()
  .slideY(begin: 0.1, end: 0.0, duration: 600.ms)
  .fadeIn(duration: 600.ms),
),

        ],
      ),
    );
  }
}
