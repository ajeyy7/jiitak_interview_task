

import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String entertext;
  final String heading;
  const TextContainer({super.key, required this.entertext, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 9),
          child: Text(heading,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
          child: Container(
            height: 50,
           width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade700),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
              child: Text(entertext,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
            ),
          ),
        )
      ],
    );
  }
}
