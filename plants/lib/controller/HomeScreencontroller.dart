import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Homescreencontroller extends GetxController{

  PageController? pageController;
  int currentIndex=0;
  changepage(pade_index){
    pageController!.animateToPage(pade_index,duration: Duration(milliseconds: 555),curve: Curves.easeIn);
    currentIndex=pade_index;
    update();
  }
  @override
  void onInit() {
    pageController=PageController(initialPage: 0);
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }
}