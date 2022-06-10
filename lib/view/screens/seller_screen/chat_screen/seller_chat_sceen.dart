import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';
import '../../buyer_screens/chat_screen/chat_screen_buyer.dart';

class SellerChatScreen extends StatelessWidget {
  const SellerChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:
              const BoxDecoration(color: Color.fromARGB(205, 246, 243, 243)),
          child: Column(
            children: [
              AppBar(
                elevation: 0.2,
                backgroundColor: const Color.fromARGB(255, 250, 248, 248),
                centerTitle: true,
                title: Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Text(
                    'Message',
                    style: GoogleFonts.montserrat(
                      color: kSellerColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MessageTile(
                  image: "",
                  lastMessage: "hello",
                  name: "Tom P Varghese",
                  time: "11:00 am"),
              MessageTile(
                  image: "",
                  lastMessage: "hello",
                  name: "Tom P Varghese",
                  time: "11:00 am"),
              MessageTile(
                  image: "",
                  lastMessage: "hello",
                  name: "Tom P Varghese",
                  time: "11:00 am"),
              MessageTile(
                  image: "",
                  lastMessage: "hello",
                  name: "Tom P Varghese",
                  time: "11:00 am"),
            ],
          ),
        ),
      ),
    );
  }
}



