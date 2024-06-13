import 'package:flutter/material.dart';
import 'package:ludo/Tik_tok_main/home_page.dart';

class Tik_Tok_Mian_Page extends StatefulWidget {
  const Tik_Tok_Mian_Page({super.key});

  @override
  State<Tik_Tok_Mian_Page> createState() => _Tik_Tok_Mian_PageState();
}

class _Tik_Tok_Mian_PageState extends State<Tik_Tok_Mian_Page> {
  int selectedJndex = 0;
  gotoPages(int index) {
    setState(() {
      selectedJndex = index;
    });
  }

  List<Widget> pages = [
    Center(
      child: Text('PAGE 1'),
    ),
    Center(
      child: Text('PAGE 2'),
    ),
    Center(
      child: Text('PAGE 3'),
    ),
    Center(
      child: Text('PAGE 4'),
    ),
    Center(
      child: Text('PAGE 5'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Home_Page_tik(),
      bottomNavigationBar: BottomNavigationBar(
          // showUnselectedLabels: true,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.yellow,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedJndex,
          onTap: gotoPages,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.add_box_rounded),
                label: 'Home'),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.person),
                label: 'User'),
          ]),
    );
  }
}
