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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.amber),
        margin: EdgeInsets.all(12),
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          currentIndex: index,
          selectedFontSize: 16,
          backgroundColor: Colors.amber,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'favorite',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'serach'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          ],
        ),
      ),
    );
  }
}
