import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishi_sahayak/controller/landingpage_cntroller.dart';
import 'package:krishi_sahayak/utils/global.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController());
    return Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: HomeScreenItems,
          controller: landingPageController.pageController,
        ),
        bottomNavigationBar: Obx(
          () => CupertinoTabBar(
            height: 60,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            backgroundColor: Colors.transparent,
            currentIndex: landingPageController.tabIndex.value,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_circle,
                  ),
                  label: 'Upload'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.history_outlined,
                  ),
                  label: 'History'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'Profile'),
            ],
            onTap: (value) {
              landingPageController.tabIndex.value = value;
              landingPageController.pageController.jumpToPage(value);
            },
          ),
        ));
  }
}
