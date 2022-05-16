import 'package:flutter/material.dart';
import 'package:untitled9/view/favoritepage/FavoritePage.dart';
import 'package:untitled9/view/homepage/homePage.dart';
import 'package:untitled9/view/orderspage/OrdersPage.dart';
import 'package:untitled9/view/search/SettingPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex=0;
  final List<Widget> _children=[
    HomePage(),
    FavoritePage(),
    SettingPage(),
    OrdersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(
            color: Colors.pinkAccent,
            size: 50
        ),
        unselectedIconTheme: IconThemeData(
            color: Colors.grey,
            size: 40
        ),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        onTap: (index){
          setState(() {
            selectedIndex=index;
            print('$index');
          });
        },
        items: [
          BottomNavigationBarItem(label: '',icon: Icon(Icons.home,)),
          BottomNavigationBarItem(label: '',icon: Icon(Icons.favorite,)),
          BottomNavigationBarItem(label: '',icon: Icon(Icons.settings,)),
          BottomNavigationBarItem(label: '',icon: Icon(Icons.shop,)),
        ],
      ),
      body: _children[selectedIndex],
    );
  }
}


