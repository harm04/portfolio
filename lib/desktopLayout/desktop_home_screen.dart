import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:rive/rive.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/link.dart';

class DesktopHomeScreen extends StatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  State<DesktopHomeScreen> createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
  Artboard? riveArtBoard;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/rive/space_coffee.riv').then((data) async {
      try {
        final file = RiveFile.import(data);
        final artboard = file.mainArtboard;
        var controller =
            StateMachineController.fromArtboard(artboard, 'spaceCoffee');
        if (controller != null) {
          artboard.addController(controller);
        }
        setState(() {
          riveArtBoard = artboard;
        });
      } catch (e) {
        print(e);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 25, 20, 44),
        body: riveArtBoard == null
            ? const SizedBox()
            : SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      const Expanded(
                        child: SizedBox(
                          height: 1000,
                          width: double.infinity,
                          child: RiveAnimation.asset(
                            'assets/rive/space_coffee.riv',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SafeArea(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 108,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                    radius: 100,
                                    backgroundImage: AssetImage(
                                        'assets/images/harsh.jpg')),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('hello I\'m ',
                                          style: GoogleFonts.dancingScript(
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 50,
                                            ),
                                          )),
                                      Text('Harsh Mali !',
                                          style: GoogleFonts.dancingScript(
                                            textStyle: const TextStyle(
                                              color: Colors.yellow,
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                            0.66,
                                    // double.infinity,
            
                                    child: Flexible(
                                        child: AutoSizeText.rich(
                                            TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Architecting ideas into elegant ',
                                          style:
                                              GoogleFonts.robotoCondensed(
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 75,
                                            ),
                                          )),
                                      TextSpan(
                                          text: 'code structures.',
                                          style:
                                              GoogleFonts.robotoCondensed(
                                            textStyle: const TextStyle(
                                              color: Colors.yellow,
                                              fontSize: 75,
                                            ),
                                          ))
                                    ]))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0),
                            child: AutoSizeText.rich(TextSpan(children: [
                              TextSpan(
                                  text:
                                      'I am a computer engineering student at Mumbai University, concurrently honing my skills in Flutter for mobile and web app development. My academic journey equips me with a solid foundation, while self-directed learning in Flutter showcases my dedication to staying at the forefront of technology.',
                                  style: GoogleFonts.robotoCondensed(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                    ),
                                  )),
                            ])),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:30.0),
                            child: Row(
                              children: [
                                Link(
                                    uri: Uri.parse(
                                        'https://techstepsservices.com/'),
                                    builder: (context, followLink) {
                                      return InkWell(
                                        onTap: followLink,
                                        child: const Icon(
                                          FontAwesomeIcons.github,
                                          size: 50,
                                        ),
                                      );
                                    }),
                                const SizedBox(
                                  width: 10,
                                ),
                                Link(
                                    uri: Uri.parse(
                                        'https://www.instagram.com/harsh_mali_4/'),
                                    builder: (context, followLink) {
                                      return InkWell(
                                        onTap: followLink,
                                        child: const Icon(
                                          FontAwesomeIcons.instagram,
                                          size: 50,
                                        ),
                                      );
                                    }),
                                const SizedBox(
                                  width: 10,
                                ),
                                Link(
                                    uri: Uri.parse(
                                        'https://www.linkedin.com/in/harsh-mali-b5399a2a7/'),
                                    builder: (context, followLink) {
                                      return InkWell(
                                        onTap: followLink,
                                        child: const Icon(
                                          FontAwesomeIcons.linkedin,
                                          size: 50,
                                        ),
                                      );
                                    }),
                                     const SizedBox(
                                  width: 10,
                                ),
                                Link(
                                    uri: Uri.parse(
                                        'https://mail.google.com/'),
                                    builder: (context, followLink) {
                                      return InkWell(
                                        onTap: followLink,
                                        child: const Icon(
                                          FontAwesomeIcons.google  ,color: Colors.white,
                                          size: 40,
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GradientText(
                    'My Projects',
                    style: GoogleFonts.robotoCondensed(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    colors: const [
                      Color.fromARGB(255, 126, 15, 218),
                      Color.fromARGB(255, 144, 21, 226),
                      Color.fromARGB(255, 194, 8, 184),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Utils().showMyDialoug(context,MediaQuery.of(context).size.height * 0.8,MediaQuery.of(context).size.width * 0.42,);
                        },
                        child: Utils().card()),
                      const SizedBox(
                        width: 30,
                      ),
                      Utils().card(),
                    ],
                  ),
                    const SizedBox(
                    height: 70,
                  ),
                   const Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                   AutoSizeText.rich(TextSpan(children: [
                              TextSpan(
                                  text:
                                      'Contact Me',
                                  style: GoogleFonts.robotoCondensed(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                    ),
                                  )),
                            ])),

                              const SizedBox(
                    height: 50,
                  ),

                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [
                      Utils().textfield(),
                      Utils().textfield(),
                      Utils().textfield(),
                      Utils().button('Submit'),
                    ],
                  ),
                 
                  const SizedBox(
                    height: 50,
                  ),
                   AutoSizeText.rich(TextSpan(children: [
                              TextSpan(
                                  text:
                                      'Created by Harsh using flutter 🫶',
                                  style: GoogleFonts.robotoCondensed(
                                    textStyle: const TextStyle(
                                      color: Colors.green,
                                      fontSize: 14  ,
                                    ),
                                  )),
                            ])),
                            const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ));
  }
}
