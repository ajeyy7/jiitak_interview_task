import 'package:flutter/Material.dart';

class Whit_date_container extends StatelessWidget {
  final String txtt;
  final int numm;

  const Whit_date_container({super.key, required this.txtt, required this.numm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 50,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(txtt,style: const TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 20),),
            Text(numm.toString(),style: const TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 20))
          ],
        ),
      ),
    );;
  }
}
