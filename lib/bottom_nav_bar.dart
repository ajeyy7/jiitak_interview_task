import 'package:flutter/material.dart';
import 'package:jiitak_task/pages/chat_page.dart';
import 'package:jiitak_task/pages/search_page.dart';
import 'package:jiitak_task/pages/stamp_page.dart';

import 'pages/job_page.dart';
import 'pages/my_page.dart';

class BottomNav_Page extends StatefulWidget {
  const BottomNav_Page({super.key});

  @override
  State<BottomNav_Page> createState() => _BottomNav_PageState();
}

class _BottomNav_PageState extends State<BottomNav_Page> {
  int selectedindex = 0;
  final List<Widget> children = [
    const Search_page(),
    const Job_Page(),
    const Stamp_Page(),
    const Chat_Page(),
    const My_Page(),
  ];
final Color UnselectedIconColor=Colors.grey;
final Color SelectedIconColor=Colors.orangeAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orangeAccent,
        selectedIconTheme: const IconThemeData(color: Colors.orangeAccent),
        elevation: 0,
        showUnselectedLabels: true,
        iconSize: 34,
        currentIndex: selectedindex,
        onTap: navigatebottomBar,
        type: BottomNavigationBarType.fixed,
        items:  [
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded,color: selectedindex==0? SelectedIconColor:UnselectedIconColor,), label: 'さがす'),
          BottomNavigationBarItem(
              icon: Image(
                  width: 23, image: const AssetImage("assets/icons/portfolio.png"),color: selectedindex==1? SelectedIconColor:UnselectedIconColor,),
              label: 'お仕事'),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.orangeAccent,
                child: Image(
                    width: 28, image: AssetImage("assets/icons/scanner.png"),color: Colors.white,),
              ),
              label: '打刻する'),
          BottomNavigationBarItem(
              icon: Image(
                  width: 23,
                  image: const AssetImage(
                    "assets/icons/messenger.png",
                  ),color: selectedindex==3? SelectedIconColor:UnselectedIconColor,),
              label: 'チャット'),
          BottomNavigationBarItem(
              icon:
                  Image(width: 23, image: const AssetImage("assets/icons/user.png"),color:selectedindex==4? SelectedIconColor:UnselectedIconColor ,),
              label: 'マイページ')
        ],
      ),
    );
  }

  void navigatebottomBar(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}
