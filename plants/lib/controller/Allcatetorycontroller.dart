import 'package:get/get.dart';

import '../View/ViewPalants_category.dart';

class Allcatetorycontroller extends GetxController{
String? cat;
String? name;

  List<Map<String,String>> plant_cat=[
    {
      "image": "images/hadmy.png",
      "name":"الجهاز الهضمي",
      "cat":"1"
    },
    {
      "image":  "images/tanafocy.png",
      "name":"المناعة والجهاز التنفسي",
      "cat":"2"
    },
    {
      "image": "images/poly.png",
      "name":"الجهاز البولي والبروستات",
      "cat":"6"
    },
    {
      "image":  "images/geld.png",
      "name":"الجلد والعناية بالبشرة",
      "cat":"5"
    },
    {
      "image":  "images/nero.png",
      "name":"الجهاز العصبي",
      "cat":"3"
    },
    {
      "image":  "images/herat.png",
      "name":"القلب والدورة الدموية",
      "cat":"4"
    },
  ];
  gotoViewpalantsCategory(String cat,String name){
    Get.toNamed("/ViewpalantsCategory",arguments: {
      "cat":cat,
      "name":name,
    });
  }

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }




}