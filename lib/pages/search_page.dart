import 'package:flutter/material.dart';
import 'package:jiitak_task/date_container.dart';
import 'package:jiitak_task/job_conatiner.dart';
import 'package:jiitak_task/utils/date_container_whte.dart';

class Search_page extends StatefulWidget {
  const Search_page({super.key});

  @override
  State<Search_page> createState() => _Search_pageState();
}

class _Search_pageState extends State<Search_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Stack(
          children:[ Column(
            children: [
              SafeArea(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade200),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade200,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 13),
                            hintText: '北海道, 札幌市',
                            filled: true,
                            fillColor: Colors.grey.shade200,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Image(
                        width: 26,
                        image: const AssetImage("assets/icons/controller.png"),
                        color: Colors.grey.shade700,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.pink,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.orangeAccent.shade100,
                child: const Center(
                    child: Text(
                  "2022年 5月 26日（木）",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                )),
              ),
              const SizedBox(height: 10),
              Container(
                height: 80,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Date_Container(txtt: '木', numm: 26),
                      const Whit_date_container(txtt: "金", numm: 27),
                      const Whit_date_container(txtt: "金", numm: 28),
                      const Whit_date_container(txtt: "土", numm: 29),
                      const Whit_date_container(txtt: "日", numm: 30),
                      const Whit_date_container(txtt: "火", numm: 31),
                      const Whit_date_container(txtt: "水", numm: 1),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Stack(
                children:[const Column(
                  children: [
                    Partime_Jobsz(imgpath: 'assets/images/caretaker.webp'),
                    Partime_Jobsz(imgpath: 'assets/images/gfgf.jpg'),
                  ],
                ),
                  Positioned(
                      top: 440,
                      right: 18,
                      child: CircleAvatar(
                        radius: 34,
                    backgroundColor: Colors.grey.shade100,
                        child: const Icon(Icons.location_on_outlined,size: 30,color: Colors.black,),
                  ),),
          ]
              ),
            ],
          ),
    ]
        ),
      ),
    );
  }
}
