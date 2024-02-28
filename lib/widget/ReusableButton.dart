import 'package:flutter/cupertino.dart';

class reusableButton extends StatelessWidget {
  late final Color backgroundColor;
  late final String text;
  late final Color textColor;

  reusableButton({required this.backgroundColor, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height/14,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40.0)
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: textColor
          ),
        ),
      ),
    );
  }
}
