import 'package:dotask_app/app/ui/pages/login/controller/login_controller.dart';
import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:dotask_app/app/ui/routes/routes.dart';
import 'package:dotask_app/app/ui/widgets/app_name.dart';
import 'package:dotask_app/app/ui/widgets/custom_outlined_button.dart';
import 'package:dotask_app/app/ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:google_fonts/google_fonts.dart';

final loginProvider = SimpleProvider(
  (ref) => LoginController(),
);

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white.withOpacity(.98),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
          ),
          const AppName(arc1: true, arc2: true, arc3: true),
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text("Email"),
          ),
          Consumer(
            builder: (_, ref, __) {
              final isEnabled =
                  ref.watch(loginProvider.ids(() => ['emailValid'])).emailValid;
              return CustomTextField(
                controller: loginProvider.read.emailTextController,
                iconEnable: Icons.check_circle_outline_outlined,
                iconDisable: Icons.close,
                colorEnable: Colors.green,
                colorDisable: Colors.red,
                isEnabled: isEnabled,
                onChanged: loginProvider.read.onChangeEmail,
                onPressedButton: () {},
              );
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text("Password"),
          ),
          Consumer(
            builder: (_, ref, __) {
              final isEnabled = ref
                  .watch(loginProvider.ids(() => ['passwordVisible']))
                  .passwordVisible;
              return CustomTextField(
                controller: loginProvider.read.passwordTextController,
                isPassword: true,
                iconEnable: Icons.visibility_off,
                iconDisable: Icons.visibility,
                colorEnable: Colors.green,
                colorDisable: Colors.red,
                isEnabled: isEnabled,
                onChanged: (value) {},
                onPressedButton: loginProvider.read.changeVisiblePassword,
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: TextButton(
                  child: Text(
                    "Forget the password?",
                    style: GoogleFonts.comicNeue(
                      textStyle: Theme.of(context).textTheme.caption,
                      color: AppColors().primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .065,
            child: CustomOutlinedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.home);
              },
              label: 'Login',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: TextButton(
                  child: Text(
                    "Don't have an account? Register",
                    style: GoogleFonts.comicNeue(
                      textStyle: Theme.of(context).textTheme.caption,
                      color: AppColors().primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.register);
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
