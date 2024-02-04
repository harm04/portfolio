import 'package:flutter/material.dart';
import 'package:portfolio/desktopLayout/desktop_home_screen.dart';
import 'package:portfolio/mobilelayout/mobile_home_screen.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home:const ResponsiveLayout(mobileScaffold:MobileHomeScreen(), desktopScaffold:DesktopHomeScreen(),),
      // home: DesktopHomeScreen(),
      );
  }
}
