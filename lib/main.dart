import 'package:flutter/material.dart';
import 'package:freelance_fx/sharedPreference.dart';
import 'package:freelance_fx/view/screens/onboard_screens/splash_screen.dart';
import 'package:get/get.dart';





void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await SavedId.init();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}