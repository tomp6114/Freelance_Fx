import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:  MediaQuery.of(context).size.height/4,
        centerTitle: true,
        title: Text("Freelance Fx",
            style: GoogleFonts.montserrat(
                color: const Color.fromARGB(255, 121, 25, 180),
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: const Color.fromARGB(205, 246, 243, 243),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height- MediaQuery.of(context).size.height/4,
          color: const Color.fromARGB(205, 246, 243, 243),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(205, 246, 243, 243)),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: OTPTextField(
                    length: 4,
                    //width: MediaQuery.of(context).size.width,
                    fieldWidth: 60,
                    style: const TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {},
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 15,
                child: InkWell(
                    onTap: () {},
                    child: const Text(
                      "Didn't recieve code? Request again",
                      style: TextStyle(
                        color: Color.fromARGB(255, 82, 13, 126),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
