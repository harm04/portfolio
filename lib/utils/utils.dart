import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {
  Widget card() {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: Color.fromARGB(255, 179, 105, 240),
        ),
      ),
      child: Container(
        color: const Color.fromARGB(255, 20, 17, 36),
        height: 190,
        width: 350,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Chat App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/chat.png',
                  height: 90,
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '• Flutter',
                      style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      '• Firebase',
                      style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      '• Android app',
                      style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget textfield() {
    return Container(
      width: 300,
      height: 100,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'hinttext',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }

  Widget button(
    String buttonText,
  ) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5)),
      child:  Center(child: Text(buttonText)),
    );
  }

  showMyDialoug(BuildContext context,double height,double width) {
    List<Widget> images = [
      Image.asset(
        'assets/images/signUp.png',
        fit: BoxFit.contain,
      ),
      Image.asset('assets/images/usersList.png', fit: BoxFit.contain),
      Image.asset('assets/images/chatScreen.png', fit: BoxFit.contain),
      Image.asset('assets/images/updateProfile.png', fit: BoxFit.contain)
    ];
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: SizedBox(
              width:width ,
              height: height,
              // width: MediaQuery.of(context).size.width * 0.42,
              // height: MediaQuery.of(context).size.height * 0.8,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset(
                        'assets/images/chat.png',
                        height: 160,
                      ),
                      Text(
                        'Chat App',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Introducing Chat App, the modern messaging solution built with Flutter and powered by Firebase. This Android app redefines communication with its sleek design and powerful features.',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100)),
                          ),
                          Text(
                            'Key Features:',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          keyFeatures('1.Instant Messaging: ',
                              'Enjoy real-time conversations with easy text, emoji, and image sharing.'),
                          keyFeatures('2.Read Receipts: ',
                              'Get clarity in communication with distinctive blue tick read receipts.'),
                          keyFeatures('Push Notifications: ',
                              'Stay engaged on-the-go with instant message alerts.'),
                          keyFeatures('4.User Status: ',
                              'Optimize connections by knowing when contacts are online or offline.'),
                          keyFeatures('5.Profile Updates: ',
                              'Personalize your presence with easy profile customization.'),
                          keyFeatures('Global Visibility:',
                              'Break down barriers—connect with all users, visible regardless of your contact list.'),
                          keyFeatures('7.User Search: ',
                              'Find and connect with anyone effortlessly, fostering new connections.'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Elevate your communication with Chat App. Download now for a seamless and powerful messaging experience. Connect effortlessly, engage seamlessly where modern communication meets simplicity.',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100)),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Screenshots:',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 700,
                            width: double.infinity,
                            child: Expanded(
                              child: GridView(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 1,
                                        mainAxisSpacing: 5),
                                children: images,
                              ),
                            ),
                          ),
                        ],
                      ),
                     
                      Text(
                        'Download Chat App:',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            AnchorElement anchorElement =
                                AnchorElement(href: 'assets/files/base.apk');
                            anchorElement.download = 'Chat App';
                            anchorElement.click();
                          },
                          child: Utils().button('Download'))
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Widget keyFeatures(
    String maintext,
    String text,
  ) {
    return AutoSizeText.rich(
      TextSpan(children: [
        TextSpan(
            text: maintext,
            style: GoogleFonts.robotoCondensed(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            )),
        TextSpan(
            text: text,
            style: GoogleFonts.robotoCondensed(
              textStyle: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 17,
                  fontWeight: FontWeight.w100),
            ))
      ]),
    );
  }
}
