import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCaptionStyle extends StatelessWidget {
  const TextCaptionStyle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.comicNeue(
          textStyle: Theme.of(context).textTheme.bodyText1,
          color: AppColors().primary,
          fontWeight: FontWeight.w700),
    );
  }
}
