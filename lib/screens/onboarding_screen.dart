import 'package:expenz_application/constants/colors.dart';
import 'package:expenz_application/data/onboarding_data.dart';
import 'package:expenz_application/screens/onboarding/front_page.dart';
import 'package:expenz_application/screens/onboarding/shared_onboarding_screen.dart';
import 'package:expenz_application/screens/user_data_screen.dart';
import 'package:expenz_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // page controller
  final PageController _controller = PageController();

  bool showDetailsPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                //Onboarding screen
                PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      showDetailsPage = index == 3;
                      print(showDetailsPage);
                    });
                  },
                  children: [
                    const FrontPage(),
                    SharedOnboardingScreen(
                      title: OnboardingData.onboardingDataList[0].title,
                      imagePath: OnboardingData.onboardingDataList[0].imagePath,
                      description:
                          OnboardingData.onboardingDataList[0].description,
                    ),
                    SharedOnboardingScreen(
                      title: OnboardingData.onboardingDataList[1].title,
                      imagePath: OnboardingData.onboardingDataList[1].imagePath,
                      description:
                          OnboardingData.onboardingDataList[1].description,
                    ),
                    SharedOnboardingScreen(
                      title: OnboardingData.onboardingDataList[2].title,
                      imagePath: OnboardingData.onboardingDataList[2].imagePath,
                      description:
                          OnboardingData.onboardingDataList[2].description,
                    ),
                  ],
                ),
                // page indicators
                Container(
                  alignment: const Alignment(0, 0.7),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const WormEffect(
                        activeDotColor: kMainColor, dotColor: kLightGrey),
                  ),
                ),
                // navigation button
                Positioned(
                  bottom: 40,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: !showDetailsPage
                        ? GestureDetector(
                            onTap: () {
                              _controller.animateToPage(
                                _controller.page!.toInt() + 1,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: CustomButton(
                              buttonName:
                                  showDetailsPage ? "Get Started" : "Next",
                              buttoncolor: kMainColor,
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              // Navigate to the user data screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const UserDataScreen(),
                                ),
                              );
                            },
                            child: CustomButton(
                              buttonName:
                                  showDetailsPage ? "Get Started" : "Next",
                              buttoncolor: kMainColor,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
