import 'package:flutter/material.dart';

class Smll_Container extends StatelessWidget {
  const Smll_Container({super.key, required this.txt, required this.txtt, required this.scndtxt});
  final String txt;
  final String txtt;
  final String scndtxt;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(txt,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(txtt,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                        const Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                ),
              ),
              const Text("〜"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(scndtxt,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                        const Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
