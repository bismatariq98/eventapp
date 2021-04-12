import 'package:eventapp/Screens/Group.dart';
import 'package:eventapp/const/textStyle.dart';
import 'package:eventapp/main.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class University extends StatefulWidget {
  @override
  _UniversityState createState() => _UniversityState();
}

class _UniversityState extends State<University> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(height: Get.height,width: Get.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore your Intrest!",style: heading,),
                  IconButton(icon: Icon(Icons.forward,size:35), onPressed: (){})
                ],
              ),
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

                Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Group Organization",style: heading,),
                  IconButton(icon: Icon(Icons.forward,size:35), onPressed: (){
                    Get.to(Group());                  })
                ],
              ),
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
            ),     Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Events",style: heading,),
                  IconButton(icon: Icon(Icons.forward,size:35), onPressed: (){})
                ],
              ),
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
               Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Groups",style: heading,),
                  IconButton(icon: Icon(Icons.forward,size:35), onPressed: (){})
                ],
              ),
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
          ],
        ),
      ),
      ),
    );
  }
}