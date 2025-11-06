import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      width: double.infinity,
      child: AnotherCarousel(
        images: const [
          NetworkImage("https://via.placeholder.com/400x300?text=Image+1"),
          NetworkImage("https://via.placeholder.com/400x300?text=Image+2"),
          NetworkImage("https://via.placeholder.com/400x300?text=Image+3"),
        ],
        dotSize: 6.0,
        dotSpacing: 15.0,
        dotColor: Colors.white,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        borderRadius: true,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 800),
      ),
    );
  }
}
