// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:stream_clone_ui/app_export.dart';

class PacketsWidget extends StatelessWidget {
  const PacketsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          color: Colors.white,
        ),
        Container(
          height: size.height * 0.10,
          color: Colors.blueAccent,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Center(
            child: Container(
              width: size.width * 0.9,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.35,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Sniff Now"),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: size.width * 0.35,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Sniff History")),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SniffData(
                        title: "Upload Size",
                        subtitle: "0 Byte",
                      ),
                      SniffData(
                        title: "Download Size",
                        subtitle: "0 Byte",
                      ),
                      SniffData(
                        title: "Requests",
                        subtitle: "-",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
