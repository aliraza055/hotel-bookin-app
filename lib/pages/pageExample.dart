import 'package:flutter/material.dart';

class PracticeUI extends StatefulWidget {
  const PracticeUI({super.key});

  @override
  State<PracticeUI> createState() => _PracticeUIState();
}

class _PracticeUIState extends State<PracticeUI> {
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
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(child: Text("Send Data")),
            ),
          ),
        ],
      ),
    );
  }
}
