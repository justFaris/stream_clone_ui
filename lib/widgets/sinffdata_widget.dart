// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SniffData extends StatelessWidget {
  final String title;
  final String subtitle;
  const SniffData({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color.fromARGB(255, 26, 26, 26),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
