import 'package:eventapp/Screens/post.dart';
import 'package:eventapp/const/textStyle.dart';
import 'package:eventapp/main.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Global extends StatefulWidget {
  @override
  _GlobalState createState() => _GlobalState();
}

class _GlobalState extends State<Global>with SingleTickerProviderStateMixin {

    @override
  void initState() {
    super.initState();
    // friendController.getallData();


    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  TabController _tabController;
  TabBar get _tabBar => TabBar(
        controller: _tabController,
        indicatorColor: Colors.red,
        labelColor: Colors.red,
        unselectedLabelColor: Colors.grey,
     
        tabs: [
          Tab(
            
           text: "Post",),
          Tab( text: "CheckIn"),
           Tab( text: "Influencer"),
            Tab( text: "Collection"),
          // Tab(icon: Icon(Icons.ondemand_video, size: 30.0)),
         
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:Get.height ,
        width: Get.width,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
       Padding(
         padding: const EdgeInsets.all(5.0),
         child: Text("Your Tasks",style: heading,),
       ),
             Container(
              height: 100,
              width: Get.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context,i){
                  return
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: AssetImage("asset/avatar.png"))
          ),),
                      );
                }),
            ),

            Container(
                child:     PreferredSize(
          preferredSize: _tabBar.preferredSize,
          child: ColoredBox(
            color: Colors.white,
            child: _tabBar,
          ),
        ),
            ),

            Expanded(child: 
             TabBarView(controller: _tabController, children: [
    Post(),
         Text("asdas"),
          Text("asdas"),
         Text("asdas"),
      ]),
            
            )


     ],)
      ),
    );
      
    
  }
}