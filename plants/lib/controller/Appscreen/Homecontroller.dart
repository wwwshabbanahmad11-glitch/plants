import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:get/get.dart';

import '../../View/Allcatetory.dart';
import '../../View/ViewPalants_category.dart';
import '../../class/SqlFlit/SQLFLITE.dart';

class Homecontroller extends GetxController{
  SqlDb sqlDb=SqlDb();
 String ex="زرعان يحبهما الله:\n زرع الشجر تربح ظلاً وثمراً، \n زرع طيب الأثر تحصد محبة الله ثم البشر.";
  List<Map<String,String>> plant_cat=[
    {
      "image": "images/Digestive System.svg",
      "name":"الجهاز الهضمي",
      "cat":"1"
    },
    {
      "image":  "images/respiratory system.svg",
      "name":"المناعة والجهاز التنفسي",
      "cat":"2"
    },
    {
      "image": "images/gender.svg",
      "name":"الجهاز البولي والبروستات",
      "cat":"6"
    },
    {
      "image":  "images/hands.svg",
      "name":"الجلد والعناية بالبشرة",
      "cat":"5"
    },
  ];

  List<Map<String,String>> plant_distinct=[
    {
      "image": "images/Ginger.jpg",
      "name":"الزنجبيل",
      "ben": "تخفيف آلام الدورة الشهرية",

    },
    {
      "image":  "images/Peppermint.jpg",
      "name":"النعناع",
      "ben": "تخفيف عسر الهضم",
    },
    {
      "image": "images/Cinnamon.jpg",
      "name":"القرفة",
      "ben": "مضاد للالتهاب",
    },

  ];
  GotoAllcat(){
   Get.toNamed("/Allcatetory");

  }
  Gotoplantviewcat(String catname,String name){
 Get.toNamed("/ViewpalantsCategory",arguments: {
   "cat":catname,
   "name":name
 });

  }


@override
  void onInit() {

    // TODO: implement onInit
    super.onInit();
  }

}