import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Howtousecontroller extends GetxController {

  List<dynamic>? data;

  int? numbercontainer;
  double? he_container=0.0;


  heightContainer(i,he){
    numbercontainer=i;
    he_container=he;
    update();
  }




  @override
  void onInit() {
    data =Get.arguments["data"];
    // TODO: implement onInit
    super.onInit();
  }
}