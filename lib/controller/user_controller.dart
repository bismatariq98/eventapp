import 'package:eventapp/Screens/Tabs.dart';
import 'package:eventapp/controller/loading.dart';
import 'package:eventapp/main.dart';
import 'package:eventapp/model/userModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
class UserController extends GetxController {
  UserData userData;
    String errorMessage = '';
  String currentUserId;
  Loader loading = Get.put(Loader());
  String userId;
   final formKeySignUp = GlobalKey<FormState>();
  final formKeyLogin = GlobalKey<FormState>();
    TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController signUpemailController = TextEditingController();
  TextEditingController signUppasswordController = TextEditingController();
  TextEditingController loginemailController = TextEditingController();
  TextEditingController loginpasswordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
 Future addUserData() async {
    FirebaseFirestore.instance.collection('Users').doc(currentUserId).set(
      {
        'FirstName': userData.firstName,
       
        'UserId': currentUserId,
        'Email': userData.email,

        "LastName": userData.lastName,
      
      },
    );
    return true;
  }
  signUp() async {
    loading.loadingShow();


    try {
      var user = await firebaseAuth.createUserWithEmailAndPassword(
          email: signUpemailController.text, password: signUppasswordController.text);

      currentUserId = user.user.uid.toString();
   
      addUserData().then((val) {
        loading.loadingDismiss();
     
        Get.snackbar('Success', 'Sign up SuccessFully');
      });
    } catch (e) {
   
      loading.loadingDismiss();
      update();
      Get.snackbar('Error', e.message);
    }
  }

 
  Future signIn() async {
    UserCredential userCredential;
    try {
      loading.loadingShow();
      userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: loginemailController.text,
          password: loginpasswordController.text);
      currentUserId = userCredential.user.uid.toString();
      loading.loadingDismiss();
      
      Get.to(TabScreen());

    
    } catch (e) {
      print(e.toString());
   
      loading.loadingDismiss();
      Get.snackbar('Error', e.message);
      update();
    }
  }
  }