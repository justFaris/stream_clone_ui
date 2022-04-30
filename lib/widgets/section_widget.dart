// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stream_clone_ui/app_export.dart';

class BuildSection extends StatelessWidget {
  const BuildSection({
    Key? key,
    required this.name,
    required this.count,
    required this.items,
  }) : super(key: key);
  final String name;
  final int count;
  final List<ButtonsModel> items;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        GridView.builder(
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 1,
                crossAxisSpacing: 2,
                mainAxisSpacing: 10),
            physics: NeverScrollableScrollPhysics(),
            itemCount: count,
            itemBuilder: (BuildContext ctx, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: items[index].onTap,
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: items[index].color,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        items[index].icon,
                        size: 55.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    items[index].name,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              );
            }),
      ],
    );
  }
}
