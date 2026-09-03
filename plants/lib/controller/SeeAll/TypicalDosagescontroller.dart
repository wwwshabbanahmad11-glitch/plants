import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Typicaldosagescontroller extends GetxController {

  List? data;

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
    print(data);
    // TODO: implement onInit
    super.onInit();
  }
}