import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilis/AppColors.dart';
import 'ReusableButton.dart';

class viewAndEditWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color:
        const Color(0xFF2e3253).withOpacity(0.4),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          reusableButton(
            backgroundColor: AppColors.mainColor,
            text: 'View',
            textColor: Colors.white,
          ),
          SizedBox(height: 10),
          reusableButton(
            backgroundColor: AppColors.mainColor,
            text: 'Edit',
            textColor: AppColors.secondaryColors,
          )
        ],
      ),
    );
  }
}