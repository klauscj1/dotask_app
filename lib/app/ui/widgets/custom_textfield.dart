import 'package:dotask_app/app/ui/pages/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.isPassword = false,
      required this.controller,
      required this.iconEnable,
      required this.iconDisable,
      required this.isEnabled,
      required this.colorEnable,
      required this.colorDisable,
      required this.onChanged,
      required this.onPressedButton})
      : super(key: key);

  final bool isPassword;
  final TextEditingController controller;
  final IconData iconEnable;
  final IconData iconDisable;
  final bool isEnabled;
  final Color colorEnable;
  final Color colorDisable;
  final Function(String) onChanged;
  final VoidCallback onPressedButton;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword ? !isEnabled : false,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: AppColors().primary),
        ),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: onPressedButton,
                icon: Icon(
                  isEnabled ? iconEnable : iconDisable,
                  color: isEnabled ? colorEnable : colorDisable,
                ),
              )
            : Icon(
                isEnabled ? iconEnable : iconDisable,
                color: isEnabled ? colorEnable : colorDisable,
              ),
      ),
    );
  }
}
