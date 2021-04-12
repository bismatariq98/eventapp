import 'package:eventapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       height: Get.height,
       width: Get.width,
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 14),
         child: Column(
           children: [
             Text("Bio Here",style: TextStyle(fontSize: 30),),

             Row(
               children: [
              Icon(Icons.cast_for_education,size: 25,),
              SizedBox(width: 10,),
              Text("University of Toronto",style: TextStyle(fontSize: 25),),
             ],),
                  Row(
               children: [
              Icon(Icons.verified_user,size: 25,),
               SizedBox(width: 10,),
              Text("Single",style: TextStyle(fontSize: 25),),
             ],),
                  Row(
               children: [
              Icon(Icons.location_city,size: 25,),
              SizedBox(width: 10,),
              Text("America Switzerland",style: TextStyle(fontSize: 25),),
             ],),
                Row(
               children: [
              Icon(Icons.person,size: 25,),
              SizedBox(width: 10,),
              Text("888",style: TextStyle(fontSize: 25),),
             ],),
           ],
         ),
       ),
      ),
      
    );
  }
}