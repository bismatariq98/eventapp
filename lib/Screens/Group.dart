import 'mainScreen.dart';
import 'package:eventapp/main.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
class Group extends StatefulWidget {
  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group>with SingleTickerProviderStateMixin {
   @override
  void initState() { 
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
   TabController _tabController;
   TabBar get _tabBar => TabBar(
     controller: _tabController,
    indicatorColor: Colors.red,
    labelColor: Colors.red,
        unselectedLabelColor: Colors.grey,
      tabs: [
        Tab(text: "About",),
        Tab(text: "Members",),
        Tab(text: "Udate",),
        Tab(text: "Media",),
        
      ],
   );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         height: Get.height,
      width: Get.width,
      child: Column(children: [

      ],),
      ),
      
    );
  }
}