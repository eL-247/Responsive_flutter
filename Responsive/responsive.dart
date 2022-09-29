// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';

class Responsive extends StatelessWidget {
  Widget isMobile;
  Widget isDesktop;

  Responsive({
    Key? key,
    required this.isDesktop,
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return isMobile;
        } else {
          return isDesktop;
        }
      },
    );
  }
}
