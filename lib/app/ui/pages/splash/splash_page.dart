import 'package:dotask_app/app/ui/pages/splash/controller/splash_controller.dart';
import 'package:dotask_app/app/ui/routes/routes.dart';
import 'package:dotask_app/app/ui/widgets/app_name.dart';
import 'package:dotask_app/app/ui/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

final splashProvider = SimpleProvider(
  (ref) => SplashController(),
);

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<SplashController>(
      provider: splashProvider,
      onChange: (context, controller) {
        if (controller.navigate) {
          Navigator.pushReplacementNamed(context, Routes.onboarding);
        }
      },
      builder: (_, controller) {
        return Scaffold(
          body: Stack(
            children: [
              const Background(),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Consumer(builder: (_, ref, __) {
                      final splashController = ref.watch(splashProvider);
                      return AppName(
                        arc1: splashController.arc1,
                        arc2: splashController.arc2,
                        arc3: splashController.arc3,
                      );
                    })
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
