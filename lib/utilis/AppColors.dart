import 'dart:ui';
import 'package:flutter/material.dart';

const kTitleTextStyle =  TextStyle(
  color: AppColors.mainColor,
  fontSize: 60.0,
  fontWeight: FontWeight.bold,
);

const kSmallTitleTextStyle = TextStyle(
  color: AppColors.smallTextColor,
  fontSize: 14,
);

const kSmallTextStyle = TextStyle(
  fontSize: 20,
  color: AppColors.secondaryColors,
);

class AppColors{
  static const mainColor = Color(0xFF202e59);
  static const secondaryColors = Color(0xFF6c8ee3);
  static const smallTextColor = Color(0xFF2e3253);
  static const textHolder = Color(0xFFedf0f8);
  static const textGrey = Color(0xFFafb1b5);

  static final outLineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: const BorderSide(
      color: Colors.white,
      width: 1.0,
    ),
  );
}