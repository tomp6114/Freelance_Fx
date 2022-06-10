

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SavedId{
  static late SharedPreferences _preferences;
  static Future init()async{
    _preferences = await SharedPreferences.getInstance();
  }

  //Save userdata to SharedPrefrence as key value userData
  static saveUserData(Map userData){
    String encodedMap = json.encode(userData);
     print(encodedMap);

    final map = jsonDecode(encodedMap);
    _preferences.setString('userData', encodedMap);
  }

  //Get the user Data
  static getUserData() {
    return _preferences.getString('userData');
  }

  //Saves the token of user in SharedPreference as key value token
  static Future saveToken(String token) async {
    var result = await _preferences.setString("token", token);
    print(result);
  }

  //Delete token to SignOut
  static deleteToken() async {
    var result = await _preferences.remove("token");
    print(result);
  }

  //Saves the id of user in SharedPreference as key value id
  static Future saveId(String id) async {
    var result = await _preferences.setString("id", id);
    print(result);
  }
  
  //Delete the id to SignOut
  static deleteId() async {
    var result = await _preferences.remove("id");
    print(result);
  }

  //Saves the role of user in SharedPreference as key value role
  static Future saveRole(List<String> role) async {
    var result = await _preferences.setStringList("role", role);
    print(result);
  }
}