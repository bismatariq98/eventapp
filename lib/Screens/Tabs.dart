import 'package:eventapp/Screens/ProfileScreen.dart';
import 'package:eventapp/Screens/mainScreen.dart';
import 'package:eventapp/main.dart';
import 'package:flutter/material.dart';


class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
    int _currentIndex = 2;

  List _pages = [
    MainScreen(),
   Text("ehllo"),
   Text("ehllo"),

    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       bottomNavigationBar:Theme(data: Theme.of(context).copyWith(canvasColor: Colors.white), 
        child: 
      BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xFFF38FB1),
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap:(i){
          setState(() {
                   _currentIndex  = i;
                    });
        } ,


        items: 
      [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit_outlined),
          label: "Message",
          
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Contact",
          
        ),
      
         BottomNavigationBarItem(
          icon: Icon(Icons.verified_user),
          label: "Profile",
          
        ),


      ]
      
      )
        ) ,
        body: _pages[_currentIndex],
    );
  }
}