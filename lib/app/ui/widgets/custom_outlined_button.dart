import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 1.0,
            color: AppColors().primary,
          ),
          shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Text(
        label,
        style: GoogleFonts.comicNeue(
          textStyle: Theme.of(context).textTheme.button,
          color: AppColors().primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
