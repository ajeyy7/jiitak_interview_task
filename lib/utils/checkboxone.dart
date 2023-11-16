import 'package:flutter/material.dart';
import 'package:jiitak_task/utils/redchkBox.dart';
import 'package:jiitak_task/utils/whtecheck_box.dart';

class Checkk_Boxzz extends StatelessWidget {
  const Checkk_Boxzz({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text("定休日*",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
          ),
          Row(
            children: [
              Wht_ChkBx(textt: "月"),
              Wht_ChkBx(textt: "火"),
              Wht_ChkBx(textt: "水"),
              Wht_ChkBx(textt: "木"),
            ],
          ),
          Row(
            children: [
              Wht_ChkBx(textt: "金"),
              Red_chk_Box(textt: "土"),
              Red_chk_Box(textt: "日"),
              Red_chk_Box(textt: "祝")
            ],
          )
        ],
      ),
    );
  }
}
