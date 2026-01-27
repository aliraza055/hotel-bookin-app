import 'package:flutter/material.dart';

class PracticeUI extends StatefulWidget {
  const PracticeUI({super.key});

  @override
  State<PracticeUI> createState() => _PracticeUIState();
}

class _PracticeUIState extends State<PracticeUI> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Practice Ui"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hello Word" + x.toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  x++;
                });
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,

                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Send Data"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
