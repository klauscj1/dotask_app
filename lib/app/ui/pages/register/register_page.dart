import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:dotask_app/app/ui/routes/routes.dart';
import 'package:dotask_app/app/ui/widgets/app_name.dart';
import 'package:dotask_app/app/ui/widgets/custom_outlined_button.dart';
import 'package:dotask_app/app/ui/widgets/custom_textfield.dart';
import 'package:dotask_app/app/ui/widgets/text_style_caption.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controller/register_controller.dart';

final registerProvider = SimpleProvider(
  (ref) => RegisterController(),
);

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
            height: MediaQuery.of(context).size.height * .075,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextCaptionStyle(text: "Email"),
          ),
          Consumer(
            builder: (_, ref, __) {
              final isEnabled = ref
                  .watch(registerProvider.ids(() => ['emailValid']))
                  .emailValid;
              return CustomTextField(
                controller: registerProvider.read.emailTextController,
                iconEnable: Icons.check_circle_outline_outlined,
                iconDisable: Icons.close,
                colorEnable: Colors.green,
                colorDisable: Colors.red,
                isEnabled: isEnabled,
                onChanged: registerProvider.read.onChangeEmail,
                onPressedButton: () {},
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextCaptionStyle(text: "Name"),
          ),
          Consumer(
            builder: (_, ref, __) {
              final isEnabled = ref
                  .watch(registerProvider.ids(() => ['nameValid']))
                  .nameValid;
              return CustomTextField(
                controller: registerProvider.read.nameTextController,
                iconEnable: Icons.check_circle_outline_outlined,
                iconDisable: Icons.close,
                colorEnable: Colors.green,
                colorDisable: Colors.red,
                isEnabled: isEnabled,
                onChanged: registerProvider.read.onChangeName,
                onPressedButton: () {},
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextCaptionStyle(text: "Password"),
          ),
          Consumer(
            builder: (_, ref, __) {
              final isEnabled = ref
                  .watch(registerProvider.ids(() => ['passwordVisible']))
                  .passwordVisible;
              return CustomTextField(
                controller: registerProvider.read.passwordTextController,
                isPassword: true,
                iconEnable: Icons.visibility_off,
                iconDisable: Icons.visibility,
                colorEnable: Colors.green,
                colorDisable: Colors.red,
                isEnabled: isEnabled,
                onChanged: (value) {},
                onPressedButton: registerProvider.read.changeVisiblePassword,
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextCaptionStyle(text: "Confirm password"),
          ),
          Consumer(
            builder: (_, ref, __) {
              final isEnabled = ref
                  .watch(registerProvider.ids(() => ['password2Visible']))
                  .password2Visible;
              return CustomTextField(
                controller: registerProvider.read.password2TextController,
                isPassword: true,
                iconEnable: Icons.visibility_off,
                iconDisable: Icons.visibility,
                colorEnable: Colors.green,
                colorDisable: Colors.red,
                isEnabled: isEnabled,
                onChanged: (value) {},
                onPressedButton: registerProvider.read.changeVisible2Password,
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
                    "Already register? Login",
                    style: GoogleFonts.comicNeue(
                      textStyle: Theme.of(context).textTheme.caption,
                      color: AppColors().primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.login);
                  },
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
              onPressed: () {},
              label: 'Register',
            ),
          )
        ],
      ),
    );
  }
}
