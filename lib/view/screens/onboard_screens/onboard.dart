import 'package:flutter/material.dart';
import 'package:freelance_fx/constants/size.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../login_signup_screens/login_screen.dart';
import '../login_signup_screens/signup_screen.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 180,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Freelance FX",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, fontSize: 30, color: titleColor),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: PageView(
          children: [
            Pages(
              image: "assets/images/Screenshot from 2022-05-18 20-33-17.png",
              text1: "Never miss an opportunity\n",
              text2: "    Easily find work, chat,\nand collaborate on the go ",
            ),
            Pages(
              image: "assets/images/Screenshot from 2022-05-18 21-06-18.png",
              text1: "Find interesting projects\n  and submit proposals",
              text2: "    Easily find work, chat,\nand collaborate on the go ",
            ),
            Pages(
              image: "assets/images/Screenshot from 2022-05-18 21-17-05.png",
              text1: "Collaborate on  the  go",
              text2: "Chat , share files and complete projects",
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 100,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                 Get.off(LoginScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 120.0, right: 120.0, top: 15.0, bottom: 15.0),
                  child: Text(
                    "Log In",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(titleColor)),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
                  //   return BottomNavigationBuyer();
                  // }));
                  Get.to(const SignUpScreen());
                },
                child: Text(
                  "New to Freelance Fx  Sign Up?",
                  style:
                      GoogleFonts.montserrat(color: titleColor, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Pages extends StatelessWidget {
  Pages({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  String image;
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: SizedBox(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
              height: 300,
              width: 400,
            ),
          ),
          Column(
            children: [
              Text(
                text1,
                style: GoogleFonts.montserratAlternates(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              kheight20,
              Text(
                text2,
                style: GoogleFonts.montserrat(fontSize: 18, wordSpacing: 2),
              ),
            ],
          ),
          kheight80,
        ],
      ),
    );
  }
}
