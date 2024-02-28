import 'package:flutter/material.dart';
import 'package:latihan_golang_resfull_api/utilis/AppColors.dart';
import 'package:latihan_golang_resfull_api/utilis/StyleApplication.dart';
import 'package:latihan_golang_resfull_api/utilis/dummy_data.dart';
import 'package:latihan_golang_resfull_api/widget/ReusableButton.dart';
import 'package:latihan_golang_resfull_api/widget/TaskWidget.dart';
import 'package:get/get.dart';

import '../widget/viewAndEditWidget.dart';

class Alltask extends StatelessWidget {
  const Alltask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.topLeft,
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 3.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/header1.jpg'),
                ),
              ),
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.secondaryColors,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: AppColors.secondaryColors,
                  ),
                  const SizedBox(width: 10),
                  Container(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(child: Container()),
                  Icon(
                    Icons.calendar_month,
                    color: AppColors.secondaryColors,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "2",
                    style: kSmallTextStyle,
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: dummyData.myData.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      background: StyleApplication.leftEditIcon,
                      secondaryBackground: StyleApplication.rightDeleteIcon,
                      onDismissed: (DismissDirection direction) {},
                      confirmDismiss: (DismissDirection direction) async {
                        if (direction == DismissDirection.startToEnd) {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (_) {
                                return viewAndEditWidget();
                              });
                          return false;
                        } else {
                          return Future.delayed(Duration(seconds: 1),
                              () => direction == DismissDirection.endToStart);
                        }
                      },
                      key: ObjectKey(index),
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 10),
                        child: TaskWidget(
                          text: dummyData.myData[index],
                          color: Colors.blueGrey,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
