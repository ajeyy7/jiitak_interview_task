import 'package:flutter/Material.dart';

class Text_Containerrr extends StatelessWidget {
  const Text_Containerrr({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18,vertical: 9),
          child: Text("料理カテゴリー*",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 6),
          child: Container(
            height: 50,
            width: 280,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade700),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("料理カテゴリー選択",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
