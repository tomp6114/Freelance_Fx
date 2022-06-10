import 'package:flutter/material.dart';
import 'package:freelance_fx/constants/colors.dart';
import 'package:freelance_fx/constants/size.dart';
import 'package:freelance_fx/screens/seller_screen/bottom_navigation_seller/bottom_navigation_seller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreenBuyer extends StatelessWidget {
  const AccountScreenBuyer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        elevation: 0,
        toolbarHeight: 200,
        leading: SizedBox(),
        title: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(190, 46, 44, 44),
                  borderRadius: BorderRadius.circular(10)),
            ),
            kheight20,
            Text(
              "Tom P Varghese",
              style: GoogleFonts.montserrat(color: kblack),
            )
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
        padding: const EdgeInsets.all(25.0),
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
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.account_circle_outlined),
                      kheight20,
                      Text(
                        "Profile",
                        style: GoogleFonts.montserrat(fontSize: 20),
                      )
                    ],
                  )
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
                  Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Settings",
                          style: GoogleFonts.montserrat(fontSize: 20))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Sign-out",
                          style: GoogleFonts.montserrat(fontSize: 20))
                    ],
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
