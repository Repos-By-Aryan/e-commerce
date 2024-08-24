import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  ///Variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;


///Update Current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

///Jump to specific dot selected page.
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

///Update current Index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(const LoginScreen());
    }
    else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

///Update current Index and jump to last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}