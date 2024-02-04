import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final mobileScaffold;
  final desktopScaffold;
 
  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.desktopScaffold,
     });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth < 750) {
        return mobileScaffold;
      }  else {
        return desktopScaffold;
      }
    });
  }
}
