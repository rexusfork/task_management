import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihan_golang_resfull_api/utilis/AppColors.dart';

class ReusableTextField extends StatelessWidget {
  final TextEditingController? textController;
  final String? hintText;
  final int? maxLines;

  ReusableTextField({required this.textController, required this.hintText, required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      controller: textController,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textHolder,
          hintText: hintText,
          focusedBorder: AppColors.outLineInputBorder,
          enabledBorder: AppColors.outLineInputBorder
      ),
    );
  }
}