import 'package:eventapp/Screens/About.dart';
import 'package:eventapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>with SingleTickerProviderStateMixin{

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
        Tab(text: "Updates",),
        Tab(text: "Media",),
        Tab(text: "Collection",),
        
      ],
   );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
              Container(
                height: Get.height,
                width: Get.width,
                child: Column(
                  children: [
                    Container(
            height: 250.0,
            child: Stack(
                    children: <Widget>[
                      Container(
                        height: 180.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 15.0),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "asset/email.png"
                                            ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
        
                          ],
                        ),
                      ),
                      Align(
    alignment: Alignment.bottomLeft,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //  crossAxisAlignment: CrossAxisAlignment.end,

                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          // color: Colors.grey[200],
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "asset/avatar.png"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.circular(50),
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                    ),
                                  ),
                                 
                                ],
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 40,
                              child: Text(
                                  "UserName",
                                  style: TextStyle(
                                      fontSize: 28.0, fontWeight: FontWeight.bold)),
                            ),
                            IconButton(icon: Icon(Icons.message), onPressed: (){})
                          ],
                        ),
                      )
                    ],
            ),
          ),

          Container(
            child: PreferredSize(
              preferredSize:_tabBar.preferredSize ,
              child: 
            ColoredBox(color: Colors.white,
            child: _tabBar,
            ),
            
            ),
          ),  

          Expanded(child: 
           TabBarView(
             controller: _tabController,
             
             children: [
             About(),
             Text("Updates"),
             Text("Media"),
             Text("Collection")
           ])
         
          ),

                  ],
                ),
              ),


      
    );
  }
}