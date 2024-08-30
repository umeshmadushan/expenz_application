import 'package:expenz_application/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color buttoncolor;
  const CustomButton({
    super.key,
    required this.buttonName,
    required this.buttoncolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.06,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: buttoncolor),
      child: Center(
          child: Text(
        buttonName,
        style: const TextStyle(
          color: kWhite,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      )),
    );
  }
}
