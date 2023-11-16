import 'package:flutter/material.dart';
import 'package:jiitak_task/utils/stamp_container.dart';

class Stamp_Page extends StatefulWidget {
  const Stamp_Page({super.key});

  @override
  State<Stamp_Page> createState() => _Stamp_PageState();
}

class _Stamp_PageState extends State<Stamp_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.indigo.shade200,
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,),)),
                  const Text("スタンプカード詳細",style: TextStyle(fontSize: 19,color: Colors.white),),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,size: 30,color: Colors.white))
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Mer キッチン",style: TextStyle(fontSize: 20,color: Colors.white)),
                  ],
                ),
                Row(
                  children: [
                    Text("現在の獲得数 ",style: TextStyle(fontSize: 20,color: Colors.white)),
                    Text("30",style: TextStyle(fontSize: 30,color: Colors.white),),
                    Text(" 個",style: TextStyle(fontSize: 20,color: Colors.white))
                  ],
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20)),
            child: Container(
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,

              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stamp_Container(),
                    Stamp_Container(),
                  ],
                ),
              ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('スタンプ獲得履歴',style: TextStyle(fontSize: 18)),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("2021 / 11 / 18",style: TextStyle(color: Colors.grey),),
                          subtitle: Text('スタンプを獲得しました。',style: TextStyle(fontSize: 18,color: Colors.black)),
                          trailing: Text("1 個"),
                        ),
                        ListTile(
                          title: Text("2021 / 11 / 17",style: TextStyle(color: Colors.grey),),
                          subtitle: Text('スタンプを獲得しました。',style: TextStyle(fontSize: 18,color: Colors.black)),
                          trailing: Text("1 個"),
                        ),
                        ListTile(
                          title: Text("2021 / 11 / 13",style: TextStyle(color: Colors.grey),),
                          subtitle: Text('スタンプを獲得しました。',style: TextStyle(fontSize: 18,color: Colors.black)),
                          trailing: Text("1 個"),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ),

        ],
      ),
    );
  }
}
