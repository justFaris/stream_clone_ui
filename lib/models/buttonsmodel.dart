import 'package:flutter/widgets.dart';

class ButtonsModel {
  final String name;
  final IconData icon;
  final Color color;
  final void Function() onTap;

  ButtonsModel(
      {required this.name,
      required this.icon,
      required this.color,
      required this.onTap});
}
