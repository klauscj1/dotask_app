import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors().primary,
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: GoogleFonts.comicNeue(
          textStyle: Theme.of(context).textTheme.button,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
