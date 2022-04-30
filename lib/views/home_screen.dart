// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:stream_clone_ui/app_export.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var toolSection = [
      ButtonsModel(
        name: "Composer",
        icon: Icons.draw_sharp,
        color: Colors.blueAccent,
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ComposerScreen()));
        },
      ),
      ButtonsModel(
        name: "Hosts",
        icon: Icons.home_max,
        color: Colors.blueAccent,
        onTap: () {},
      ),
      ButtonsModel(
        name: "Favorites",
        icon: Icons.star_border_outlined,
        color: Colors.blueAccent,
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => FavoritesScreen()));
        },
      ),
      ButtonsModel(
        name: "Utilities",
        icon: Icons.alt_route,
        color: Colors.blueAccent,
        onTap: () {},
      )
    ];
    var settingsSection = [
      ButtonsModel(
        name: "HTTPS Sniffing",
        icon: Icons.people_outlined,
        color: Colors.green,
        onTap: () {},
      ),
      ButtonsModel(
        name: "Sniff Mode",
        icon: Icons.settings_outlined,
        color: Colors.green,
        onTap: () {},
      ),
      ButtonsModel(
        name: "Logs",
        icon: Icons.note_outlined,
        color: Colors.green,
        onTap: () {},
      ),
      ButtonsModel(
        name: "Languages",
        icon: Icons.language_outlined,
        color: Colors.green,
        onTap: () {},
      ),
      ButtonsModel(
        name: "Share",
        icon: Icons.share_outlined,
        color: Colors.green,
        onTap: () {},
      ),
      ButtonsModel(
        name: "Donate",
        icon: Icons.coffee_outlined,
        color: Colors.green,
        onTap: () {},
      ),
      ButtonsModel(
        name: "Privacy",
        icon: Icons.privacy_tip_outlined,
        color: Colors.green,
        onTap: () {},
      ),
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("Overview"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.2,
              child: PacketsWidget(),
            ),
            SizedBox(
              height: 20,
            ),
            BuildSection(
              name: "Tools",
              count: toolSection.length,
              items: toolSection,
            ),
            BuildSection(
              name: "Settings",
              count: settingsSection.length,
              items: settingsSection,
            ),
          ],
        ),
      ),
    );
  }
}
