import 'package:eventapp/Global.dart';
import 'package:eventapp/Screens/University.dart';
import 'package:eventapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{

   @override
  void initState() {
    super.initState();
    // friendController.getallData();


    _tabController = TabController(vsync: this, length: 2);
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
        indicatorWeight: 3.0,
        tabs: [
          Tab(
            
           text: "Global",),
          Tab( text: "University"),
          // Tab(icon: Icon(Icons.ondemand_video, size: 30.0)),
         
        ],
      );

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
        children: <Widget>[
    Icon(icon),
    Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Text(text),
    )
        ],
      ),
    onTap: onTap,
  );
}


  Widget _buildDrawerHeader(context) {
    return Container(
      height: 220,
      child: DrawerHeader(
        
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //     colorFilter: ColorFilter.mode(Colors.black12, BlendMode.colorBurn),
        //     image: AssetImage("asset/background.png"),
        //   ),
        // ),
        child: Column(
          children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          image: DecorationImage(image: AssetImage("asset/avatar.png"))
        ),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text("32",style: TextStyle(fontSize: 27)),
             Text("+52",style: TextStyle(fontSize: 27))
          ],),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 85),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Image.asset("asset/email.png",height: 70,width: 70,),
             Text("65",style: TextStyle(fontSize: 24))
          ],),
        )
            // _buildDrawerTabbar(),
          ],
        ),
      ),
    );
  }


  Widget _buildMorePartDrawer() {
    return Container(
      child: ListView(
        children: [
           _buildDrawerHeader(context),
         _createDrawerItem(icon: Icons.contacts,text: 'Home',),
          _createDrawerItem(icon: Icons.event, text: 'Schedule',),
          _createDrawerItem(icon: Icons.note, text: 'Notes',),
          Divider(),
          _createDrawerItem(icon: Icons.collections_bookmark, text:'Explore'),
          _createDrawerItem(icon: Icons.face, text: 'Circle'),
          GestureDetector(
            onTap: (){
               
            },
            child: _createDrawerItem(icon: Icons.account_box, text: 'Settings')),
         
          Divider(),
        
         
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:Drawer(
        
        child:_buildMorePartDrawer()),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title:
        Text("Explore",style: TextStyle(fontSize: 30),),
        // Container(
        //   height: 70,
        //   width: 70,
        //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/background.png"),fit: BoxFit.cover)),
        //  ) ,
        centerTitle: true,
        actions: [
           Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          image: DecorationImage(image: AssetImage("asset/avatar.png"))
        ),),
        ],

          bottom: 
          PreferredSize(
          preferredSize: _tabBar.preferredSize,
          child: ColoredBox(
            color: Colors.white,
            child: _tabBar,
          ),
        ),
      ),
      body:
      
    TabBarView(controller: _tabController, children: [
       Global(),
       University(),
      ]),
    
    );
  }
}