import 'package:doctor_app/pages/favourite_item.dart';
import 'package:doctor_app/pages/homepage.dart';
import 'package:flutter/material.dart';

class BottomNavigaton extends StatefulWidget {
  const BottomNavigaton({super.key});

  @override
  State<BottomNavigaton> createState() => _BottomNavigatonState();
}

class _BottomNavigatonState extends State<BottomNavigaton> {
  int index = 0;
  List pages = [Homepage(), FavouriteItem(), Homepage(), FavouriteItem()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            value = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.portable_wifi_off_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.man)),
          BottomNavigationBarItem(icon: Icon(Icons.person_off_rounded)),
        ],
      ),
    );
  }
}
