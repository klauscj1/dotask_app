import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksExist extends StatelessWidget {
  const TasksExist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * .20,
          ),
          Text(
            "12",
            style: GoogleFonts.comicNeue(
              textStyle: Theme.of(context).textTheme.headline1,
              color: AppColors().primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "tasks for\ntoday",
            style: GoogleFonts.comicNeue(
              textStyle: Theme.of(context).textTheme.headline3,
              color: Colors.indigo[900],
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              const Icon(
                Icons.check_rounded,
                size: 30,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "tasks done",
                style: GoogleFonts.comicNeue(
                  textStyle: Theme.of(context).textTheme.headline5,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
