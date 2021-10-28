import 'package:flutter_meedu/flutter_meedu.dart';

class SplashController extends SimpleNotifier {
  bool navigate = false;
  bool arc1 = false;
  bool arc2 = false;
  bool arc3 = false;

  SplashController() {
    _init();
  }
  void _init() async {
    Duration duration = const Duration(milliseconds: 500);
    await Future.delayed(duration);
    arc1 = true;
    notify();
    await Future.delayed(duration);
    arc2 = true;
    notify();
    await Future.delayed(duration);
    arc3 = true;
    notify();
    await Future.delayed(duration);
    navigate = true;
    notify();
  }
}
