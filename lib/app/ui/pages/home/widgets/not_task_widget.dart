import 'package:dotask_app/app/ui/pages/home/home_page.dart';
import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:dotask_app/app/ui/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotTaskWidget extends StatelessWidget {
  const NotTaskWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hey",
            style: GoogleFonts.comicNeue(
              textStyle: Theme.of(context).textTheme.headline3,
              color: AppColors().primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "you are\nfree today",
            style: GoogleFonts.comicNeue(
              textStyle: Theme.of(context).textTheme.headline3,
              color: Colors.indigo[900],
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Last day you finished\n08 tasks",
            style: GoogleFonts.comicNeue(
              textStyle: Theme.of(context).textTheme.headline5,
              color: Colors.grey,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: double.infinity,
            height: size.height * .06,
            child: CustomOutlinedButton(
              label: 'Add new task',
              onPressed: () {
                homeProvider.read.changeNotes();
              },
            ),
          )
        ],
      ),
    );
  }
}
