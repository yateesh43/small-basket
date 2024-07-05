import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items: [
          // First image with text overlay
          _buildCarouselItem(
            imagePath: 'images/crowed.PNG',
            title: 'Getting tired at queues ?',
          ),

          // Second image with text overlay
          _buildCarouselItem(
            imagePath: 'images/menscrollingmobile.PNG',
            title: 'Order at your home',
          ),

          // Third image with text overlay
          _buildCarouselItem(
            imagePath: 'images/delivery.PNG',
            title: 'Get delivered to your door steps',
            // fontWeight: FontWeight.bold,
            shadowColor: Colors.black,
          ),
        ],
        options: CarouselOptions(
          height: 400,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
    );
  }

  Widget _buildCarouselItem({
    required String imagePath,
    required String title,
    FontWeight? fontWeight,
    Color? shadowColor,
  }) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 20.0,
          left: 20.0,
          right: 20.0,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: fontWeight ?? FontWeight.normal,
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: shadowColor ?? Colors.black,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
