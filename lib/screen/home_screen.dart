import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihan_golang_resfull_api/screen/Add_task_screen.dart';
import 'package:latihan_golang_resfull_api/utilis/AppColors.dart';
import 'package:latihan_golang_resfull_api/widget/ReusableButton.dart';
import 'package:get/get.dart';

import 'All_task_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/welcome.jpg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: const TextSpan(
                text: 'Hello',
                style: kTitleTextStyle,
                children: [
                  TextSpan(
                    text: "\nStart your beautiful day",
                    style: kSmallTitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2.5),
            InkWell(
              onTap: () {
                Get.to(
                  AddTaskScreen(),
                  transition: Transition.fade,
                  duration: Duration(milliseconds: 500),
                );
              },
              child: reusableButton(
                backgroundColor: AppColors.mainColor,
                text: 'Add Task',
                textColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.to(
                  () => const Alltask(),
                  transition: Transition.fade,
                  duration: const Duration(milliseconds: 500),
                );
              },
              child: reusableButton(
                backgroundColor: Colors.white,
                text: 'View All',
                textColor: AppColors.smallTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
