import 'package:dotask_app/app/ui/pages/home/controller/home_controller.dart';
import 'package:dotask_app/app/ui/pages/home/widgets/task_bottom_list.dart';
import 'package:dotask_app/app/ui/widgets/app_name.dart';
import 'package:dotask_app/app/ui/widgets/background_three.dart';
import 'package:dotask_app/app/ui/widgets/background_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

import 'widgets/not_task_widget.dart';

final homeProvider = SimpleProvider(
  (ref) => HomeController(),
);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Consumer(builder: (_, ref, __) {
            final notes = ref.watch(homeProvider.ids(() => ['notes'])).notes;
            if (notes) {
              return const BackgroundThree();
            } else {
              return const BackgroundTwo();
            }
          }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * .18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppName(
                        arc1: true,
                        arc2: true,
                        arc3: true,
                        large: false,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu_open_sharp,
                          color: Colors.blue,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Consumer(
            builder: (_, ref, __) {
              final notes = ref.watch(homeProvider.ids(() => ['notes'])).notes;
              if (notes) {
                return const TasksExist();
              } else {
                return const NotTaskWidget();
              }
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            height: size.height * .3,
            child: const TasksBottomList(),
          )
        ],
      ),
    );
  }
}

class TasksBottomList extends StatelessWidget {
  const TasksBottomList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 30,
          )
        ],
      ),
    );
  }
}
