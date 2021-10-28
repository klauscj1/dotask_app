import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:dotask_app/app/ui/routes/routes.dart';
import 'package:dotask_app/app/ui/widgets/app_name.dart';
import 'package:dotask_app/app/ui/widgets/custom_elevated_button.dart';
import 'package:dotask_app/app/ui/widgets/custom_outlined_button.dart';
import 'package:dotask_app/app/ui/widgets/isotype.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnbardingPage extends StatelessWidget {
  const OnbardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.grey.withOpacity(.04),
        ),
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * .6,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AppName(
                      arc1: true,
                      arc2: true,
                      arc3: true,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * .075,
                          vertical: size.height * .1),
                      child: Text(
                        "Manage your activities from home or an office project",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.comicNeue(
                          textStyle: Theme.of(context).textTheme.headline4,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * .4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Isotype(
                    arc1: true,
                    arc2: true,
                    arc3: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: size.width * .35,
                        height: size.height * .05,
                        child: CustomOutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Routes.login);
                          },
                          label: 'Login',
                        ),
                      ),
                      SizedBox(
                        width: size.width * .35,
                        height: size.height * .05,
                        child: CustomElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Routes.register);
                          },
                          label: 'Register',
                        ),
                      )
                    ],
                  ),
                  Text(
                    'by clauschocho.dev',
                    style: GoogleFonts.comicNeue(
                      textStyle: Theme.of(context).textTheme.caption,
                      color: AppColors().primary,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}
