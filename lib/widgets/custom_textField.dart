import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final String? Function(String?)? validate;
  final TextEditingController controller;

  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validate,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: const EdgeInsets.all(20),
      ),
    );
  }
}
