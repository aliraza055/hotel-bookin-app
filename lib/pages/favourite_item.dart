import 'package:flutter/material.dart';

class FavouriteItem extends StatefulWidget {
  const FavouriteItem({super.key});

  @override
  State<FavouriteItem> createState() => _FavouriteItemState();
}

class _FavouriteItemState extends State<FavouriteItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAvotie items'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
