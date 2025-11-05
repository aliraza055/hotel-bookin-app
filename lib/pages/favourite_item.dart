import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FavouriteItem extends StatefulWidget {
  const FavouriteItem({super.key});

  @override
  State<FavouriteItem> createState() => _FavouriteItemState();
}

class _FavouriteItemState extends State<FavouriteItem> {
  final _controller = PageController();
  final List<String> images = [
    "https://picsum.photos/400/300",
    "https://picsum.photos/400/300",
    "https://picsum.photos/400/300",
    "https://picsum.photos/400/300",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Images Slider")),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _controller,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Image.network(images[index], fit: BoxFit.cover);
                    },
                  ),
                  Positioned(
                    bottom: 10,
                    left: 100,
                    right: 0,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: images.length,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Colors.blue,
                        dotColor: Colors.white,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
