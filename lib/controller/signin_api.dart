import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freelance_fx/sharedPreference.dart';
import 'package:freelance_fx/view/screens/buyer_screens/bottom_navigationbar/bottom_navigationbar.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../DioConfig/dio_config.dart';
import '../model/sign_in.dart';

class SignInApi extends GetxController {
  static late SignInResponse userinfo;
  String? id;

  signInWithApi(BuildContext? context, String password, String email) async {
    try {
      //var response = await globalDio.post("/auth/users/signin",data: {"email:"email,"password":password});
      Response response = await globalDio.post("/auth/users/signin", data: {
        "email": email,
        "password": password,
      });
      if (response == null) {
        print("...........................No Response..........");
      }
      userinfo = signInResponseFromJson(response.data);
      var map = jsonDecode(response.data);
      SavedId.saveUserData(map);
      SavedId.saveToken(userinfo.token!);
      
      SavedId.saveRole(userinfo.role!);
      Navigator.pushAndRemoveUntil(
          context!,
          MaterialPageRoute(builder: (context) => BottomNavigationBuyer()),
          (route) => false);
          SavedId.saveId(userinfo.id!);
         // print("..............${userinfo.id}........");
    } on DioError catch (e) {
      String message = e.response!.data.toString();
      print(
          '====================================\n====================================\n===========================Exeption catched e $e');
      //Get.showSnackbar(SnackBar(content: Text()))

      //show in snackbar as error message

    }
  }
}
