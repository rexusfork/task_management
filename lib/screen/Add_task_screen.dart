import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihan_golang_resfull_api/utilis/AppColors.dart';
import 'package:latihan_golang_resfull_api/widget/ReusableButton.dart';
import 'package:latihan_golang_resfull_api/widget/ReusableTextField.dart';
import 'package:get/get.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameControler = TextEditingController();
    TextEditingController taskControler = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/addtask1.jpg'))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                const SizedBox(
                  height: 60.0,
                ),
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.secondaryColors,
                  ),
                )
              ],
            ),
            Column(
              children: [
                ReusableTextField(
                  textController: nameControler,
                  hintText: 'Task name',
                  maxLines: 1,
                ),
                const SizedBox(height: 20.0),
                ReusableTextField(
                  textController: taskControler,
                  hintText: 'Task detail',
                  maxLines: 3,
                ),
                const SizedBox(height: 20.0),
                reusableButton(
                  backgroundColor: AppColors.mainColor,
                  text: 'Add Task',
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
          ],
        ),
      ),
    );
  }
}
