import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class RegisterController extends SimpleNotifier {
  //variables
  bool _emailValid = false;
  bool _passwordVisible = false;
  bool _password2Visible = false;
  bool _nameValid = false;
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  TextEditingController password2TextController = TextEditingController();

  //get's
  bool get emailValid => _emailValid;
  bool get nameValid => _nameValid;
  bool get passwordVisible => _passwordVisible;
  bool get password2Visible => _password2Visible;

  //set's
  set emailValid(bool value) {
    _emailValid = value;
    notify(['emailValid']);
  }

  set passwordVisible(bool value) {
    _passwordVisible = value;
    notify(['passwordVisible']);
  }

  set password2Visible(bool value) {
    _passwordVisible = value;
    notify(['password2Visible']);
  }

  set nameValid(bool value) {
    _nameValid = value;
    notify(['nameValid']);
  }

  onChangeEmail(String value) {
    if (value.isNotEmpty) {
      _emailValid = true;
    } else {
      _emailValid = false;
    }
    notify(['emailValid']);
  }

  onChangeName(String value) {
    if (value.isNotEmpty) {
      _nameValid = true;
    } else {
      _nameValid = false;
    }
    notify(['nameValid']);
  }

  changeVisiblePassword() {
    _passwordVisible = !_passwordVisible;
    notify(['passwordVisible']);
  }

  changeVisible2Password() {
    _password2Visible = !_password2Visible;
    notify(['password2Visible']);
  }

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    nameTextController.dispose();
    password2TextController.dispose();
    super.dispose();
  }
}
