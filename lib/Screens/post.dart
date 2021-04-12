import 'package:eventapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
height: Get.height,
width: Get.width,
child: 
ListView.builder(
  itemCount: 8,
  itemBuilder: (context,i){
  return 
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 100,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
                  Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            image: DecorationImage(image: AssetImage("asset/avatar.png"))
          ),),
      ],),
    ),
  );
})

      ),
      
    );
  }
}