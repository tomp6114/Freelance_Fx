import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freelance_fx/view/constants/colors.dart';
import 'package:freelance_fx/view/constants/size.dart';
import 'package:freelance_fx/view/screens/login_signup_screens/login_screen.dart';
import 'package:freelance_fx/view/screens/seller_screen/bottom_navigation_seller/bottom_navigation_seller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../sharedPreference.dart';

class AccountScreenBuyer extends StatelessWidget {
  AccountScreenBuyer({Key? key}) : super(key: key);

  Map user = jsonDecode(SavedId.getUserData());

  @override
  Widget build(BuildContext context) {
    String imageUrl = user['image']['url'];
    // String imageUrl="";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        elevation: 0,
        toolbarHeight: 200,
        //leading: SizedBox(),
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(imageUrl.isEmpty
                            ? 'https://www.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'
                            : imageUrl)),
                    //color: Color.fromARGB(190, 46, 44, 44),
                    borderRadius: BorderRadius.circular(70)),
              ),
            ),
            kheight20,
            Text(
              '${user['name']}',
              style: GoogleFonts.montserrat(color: kblack),
            )
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 25.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.off(const BottomNavigationSeller());
                  },
                  child: Text(
                    "Become a Seller",
                    style: GoogleFonts.montserrat(),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kblack),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Freelance Fx",
              style: GoogleFonts.montserrat(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.heart_broken,
                        color: kblack,
                      ),
                      label: Text("My Services",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, color: kblack))),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_circle_outlined,
                      color: kblack,
                    ),
                    label: Text(
                      "Profile",
                      style:
                          GoogleFonts.montserrat(fontSize: 20, color: kblack),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "General",
              style: GoogleFonts.montserrat(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.ios_share),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Invite a friend",
                          style: GoogleFonts.montserrat(fontSize: 20))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(Icons.support_agent),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Support",
                          style: GoogleFonts.montserrat(fontSize: 20))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: kblack,
                      ),
                      title: Text(
                        "Settings",
                        style: GoogleFonts.montserrat(fontSize: 20),
                      )),
                  // const SizedBox(
                  //   height: 15,
                  // ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: kblack,
                    ),
                    title: Text(
                      "Sign-Out",
                      style: GoogleFonts.montserrat(fontSize: 20),
                    ),
                    onTap: ()async{
                       SavedId.init();
                      SavedId.deleteId();
                      SavedId.deleteToken();
                      Get.off(LoginScreen());
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
