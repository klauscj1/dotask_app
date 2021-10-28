import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        ),
        Positioned(
          top: -size.height * .02,
          left: -size.width * .1,
          width: size.width * .4,
          height: size.width * .4,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.05),
              borderRadius: BorderRadius.circular(500),
            ),
          ),
        ),
        Positioned(
          top: -size.height * .05,
          right: -size.width * .1,
          width: size.width * .4,
          height: size.width * .4,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.05),
              borderRadius: BorderRadius.circular(500),
            ),
          ),
        ),
        Positioned(
          bottom: -size.height * .075,
          left: -size.width * .1,
          width: size.width * .45,
          height: size.width * .45,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.08),
              borderRadius: BorderRadius.circular(500),
            ),
          ),
        ),
        Positioned(
          bottom: -size.height * .08,
          right: -size.width * .1,
          width: size.width * .45,
          height: size.width * .45,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.05),
              borderRadius: BorderRadius.circular(500),
            ),
          ),
        ),
        Center(
          child: Container(
            width: size.width * .5,
            height: size.width * .5,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.03),
              borderRadius: BorderRadius.circular(500),
            ),
          ),
        )
      ],
    );
  }
}
