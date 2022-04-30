// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../app_export.dart';

class ComposerScreen extends StatelessWidget {
  ComposerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Compose Request",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Center(
              child: ToggleSwitch(
                inactiveBgColor: Colors.white,
                initialLabelIndex: 0,
                totalSwitches: 2,
                labels: ['Request', 'Response'],
                minWidth: 85,
                minHeight: 30,
                onToggle: (index) {},
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
