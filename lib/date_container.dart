import 'package:flutter/material.dart';

class Date_Container extends StatelessWidget {
   Date_Container({super.key, required this.txtt, required this.numm});
  final String txtt;
  final int numm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 50,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(txtt,style: const TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 20),),
            Text(numm.toString(),style: const TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 20))
          ],
        ),
      ),
    );
  }
}
