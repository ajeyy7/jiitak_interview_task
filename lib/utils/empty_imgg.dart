import 'package:flutter/Material.dart';

class Empty_Img extends StatelessWidget {
  const Empty_Img({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 120,
            height:120,
            decoration: const BoxDecoration(
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.photo_outlined),
                Text("add photos")
              ],
            ),
          ),
        ),
      ],
    );
  }
}
