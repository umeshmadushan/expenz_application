import 'package:expenz_application/models/onboardingModel.dart';
import 'package:flutter/material.dart';

class OnboardingData {
  static final List<Onboardingmodel> onboardingDataList = [

    Onboardingmodel(
      title: "Gain total control of your money",
      imagePath: "assets/images/onboard_1.png",
      description: "Become your own money manager and make every cent count",
    ),
    Onboardingmodel(
      title: "Know where your money goes",
      imagePath: "assets/images/onboard_2.png",
      description:
          "Track your transaction easily,with categories and financial report ",
    ),
    Onboardingmodel(
      title: "Planning ahead",
      imagePath: "assets/images/onboard_3.png",
      description: "Setup your budget for each category so you in control",
    ),

  ];
}
