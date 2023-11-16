import 'package:flutter/material.dart';
import 'package:jiitak_task/utils/checkboxone.dart';
import 'package:jiitak_task/utils/empty_imgg.dart';
import 'package:jiitak_task/utils/mapcontainer.dart';
import 'package:jiitak_task/utils/redchkBox.dart';
import 'package:jiitak_task/utils/review_img.dart';
import 'package:jiitak_task/utils/small_container.dart';
import 'package:jiitak_task/utils/textfiled_container.dart';
import 'package:jiitak_task/utils/txt_container.dart';
import 'package:jiitak_task/utils/whtecheck_box.dart';

class My_Page extends StatefulWidget {
  const My_Page({super.key});

  @override
  State<My_Page> createState() => _My_PageState();
}

class _My_PageState extends State<My_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                  )),
              const Text(
                "店舗プロフィール編集",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Stack(
                children: [
                  const Image(
                    image: AssetImage(
                        "assets/icons/notifications-bell-button.png"),
                    width: 30,
                  ),
                  Positioned(
                    right: -3,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      child: Text(
                        "99".toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const TextContainer(
          entertext: 'Mer キッチン',
          heading: '店舗名*',
        ),
        const TextContainer(
          entertext: '林田　絵梨花',
          heading: '代表担当者名*',
        ),
        const TextContainer(
          entertext: '123 - 4567 8910',
          heading: '店舗電話番号*',
        ),
        const TextContainer(
          entertext: '大分県豊後高田市払田791-13',
          heading: '店舗住所*',
        ),
        const Map_Container(),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "店舗外観*（最大3枚まで）",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Review_Img(
                imgg: 'assets/images/iimmgg.jpeg',
              ),
              Review_Img(
                imgg: 'assets/images/iimmgg.jpeg',
              ),
              Empty_Img(),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "店舗内観*（1枚〜3枚ずつ追加してください）",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Review_Img(imgg: "assets/images/hotl.jpeg"),
              Review_Img(imgg: "assets/images/hotl.jpeg"),
              Review_Img(imgg: "assets/images/hotl.jpeg"),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "料理写真*（1枚〜3枚ずつ追加してください）",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Review_Img(imgg: "assets/images/fdd.jpeg"),
              Review_Img(imgg: "assets/images/b.jpeg"),
              Review_Img(imgg: "assets/images/ffff.jpeg"),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "メニュー写真*（1枚〜3枚ずつ追加してください）",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Review_Img(imgg: "assets/images/ba.jpeg"),
              Review_Img(imgg: "assets/images/bb.jpeg"),
              Review_Img(imgg: "assets/images/bc.jpeg"),
            ],
          ),
        ),
        const Smll_Container(txt: "営業時間", txtt: '10 : 00', scndtxt: '20 : 00'),
        const Smll_Container(txt: "ランチ時間*", txtt: '11 : 00', scndtxt: '15 : 00'),
        const Checkk_Boxzz(),
        const Text_Containerrr(),
        const Smll_Container(txt: "予算*", txtt: '¥ 1,000', scndtxt: "¥ 2,000"),
        const TextContainer(
          entertext: '美味しい！リーズナブルなオムライスランチ！',
          heading: 'キャッチコピー*',
        ),
        const TextContainer(
          entertext: '40席',
          heading: '座席数*',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 9),
          child: Text(
            "喫煙席*",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Red_chk_Box(textt: "有"),
              Wht_ChkBx(textt: "無"),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 9),
          child: Text(
            "駐車場*",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Red_chk_Box(textt: "有"),
              Wht_ChkBx(textt: "無"),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 9),
          child: Text(
            "来店プレゼント*",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Red_chk_Box(textt: "有（最大３枚まで）"),
              Wht_ChkBx(textt: "無"),
            ],
          ),
        ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Review_Img(imgg: "assets/images/iccrem.jpeg"),
                      Review_Img(imgg: "assets/images/canadadry.jpeg"),
                      Review_Img(imgg: "assets/images/cocacola.jpeg"),
                    ],
                  ),
                ),
                const TextContainer(
                  entertext: 'いちごクリームアイスクリーム, ジュース',
                  heading: '来店プレゼント名*',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 23),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange.shade200,
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(color: Colors.orange.shade300)
                    ),
                    child:const Center(child: Text("編集を保存",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                )

      ])),
    ));
  }
}
