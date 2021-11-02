import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BackgroundThree extends StatelessWidget {
  const BackgroundThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors().primary.withOpacity(.050),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..addRRect(
        RRect.fromLTRBR(
          -size.width * .5,
          size.height * .15,
          size.width * .75,
          size.height - (size.height * .15),
          Radius.circular(size.width),
        ),
      )
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
