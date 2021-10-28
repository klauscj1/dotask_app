import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class LoginController extends SimpleNotifier {
  //variables
  bool _emailValid = false;
  bool _passwordVisible = false;
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  //get's
  bool get emailValid => _emailValid;
  bool get passwordVisible => _passwordVisible;
  //set's
  set emailValid(bool value) {
    _emailValid = value;
    notify(['emailValid']);
  }

  set passwordVisible(bool value) {
    _passwordVisible = value;
    notify(['passwordVisible']);
  }

  onChangeEmail(String value) {
    if (value.isNotEmpty) {
      _emailValid = true;
    } else {
      _emailValid = false;
    }
    notify(['emailValid']);
  }

  changeVisiblePassword() {
    _passwordVisible = !_passwordVisible;
    notify(['passwordVisible']);
  }

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }
}
