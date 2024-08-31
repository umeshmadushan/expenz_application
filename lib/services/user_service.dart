import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  static Future<void> StoreUserDetails({
    required String userName,
    required String email,
    required String password,
    required String confirmPassword,
    required BuildContext context,
  }) async {
    try {
      if (password != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Password and confirm Password do not match!"),
          ),
        );
        return;
      }

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("username", userName);
      await prefs.setString("email", email);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("User details stored successfully!"),
        ),
      );
    } catch (error) {
      error.toString();
    }
  }

  static Future<bool> CheckUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userName = prefs.getString("username");
    return userName != null;
  }
}
