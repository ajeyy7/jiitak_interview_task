import 'package:flutter/material.dart';

class Map_Container extends StatelessWidget {
  const Map_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: const BoxDecoration(
          image:DecorationImage(image: AssetImage("assets/images/map.jpeg"),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
