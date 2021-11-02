import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:dotask_app/app/ui/widgets/isotype.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppName extends StatelessWidget {
  const AppName({
    Key? key,
    required this.arc1,
    required this.arc2,
    required this.arc3,
    this.large = true,
  }) : super(key: key);

  final bool arc1;
  final bool arc2;
  final bool arc3;
  final bool large;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Isotype(
            arc1: arc1,
            arc2: arc2,
            arc3: arc3,
          ),
        ),
        Text(
          "DoTask",
          style: GoogleFonts.comicNeue(
            textStyle: large
                ? Theme.of(context).textTheme.headline4
                : Theme.of(context).textTheme.headline6,
            color: AppColors().primary,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
