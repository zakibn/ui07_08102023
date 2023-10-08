import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:ui07/core/constant/routes.dart';
import 'package:ui07/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  int currentPage = 0;
  late PageController pageController;

  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  @override
  next() {
    currentPage++;

   if (currentPage > onBoardingList.length - 1) {
       Get.offAllNamed(AppRoute.login) ; 
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
    
  }

  onInit() {
      pageController = PageController();
      super.onInit();
    }
}
