import 'dart:math';

import 'package:expenz_application/constants/colors.dart';
import 'package:expenz_application/constants/constats.dart';
import 'package:expenz_application/widgets/custom_button.dart';
import 'package:expenz_application/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  bool _isChecked = false;

  //form key
  final _formKey = GlobalKey<FormState>();

  // text controller
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 60,
              left: kDefaultpadding,
              right: kDefaultpadding,
              bottom: kDefaultpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Enter Your \nPersonal Details",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey, // Add formKey here
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextfield(
                      hintText: "Name",
                      controller: _nameController,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please fill in the name field!";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      hintText: "Email",
                      controller: _emailController,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please fill in the email field!";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      hintText: "Password",
                      controller: _passwordController,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please fill in the password field!";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextfield(
                      hintText: "Confirm Password",
                      controller: _confirmPasswordController,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please confirm your password!";
                        }
                        if (value != _passwordController.text) {
                          return "Passwords do not match!";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Remember me",
                              style: TextStyle(fontSize: 16, color: kGrey),
                            ),
                          ),
                          Checkbox(
                            activeColor: kMainColor,
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState?.validate() == true) {
                          String name = _nameController.text;
                          String email = _emailController.text;
                          String password = _passwordController.text;
                          String confirmPassword =
                              _confirmPasswordController.text;

                          print(name);
                        }
                      },
                      child: const CustomButton(
                        buttonName: "Submit test button",
                        buttoncolor: kMainColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
