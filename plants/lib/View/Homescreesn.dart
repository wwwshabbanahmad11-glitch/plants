import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plants/View/AppScreen/Favorite.dart';
import 'package:plants/View/AppScreen/Home.dart';
import 'package:plants/View/AppScreen/Tips.dart';
import 'package:plants/class/constant/Appcolors.dart';

import '../controller/HomeScreencontroller.dart';
import 'AppScreen/profile.dart';

class Homescreesn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Get.put(Homescreencontroller());
    // TODO: implement buildr
    return GetBuilder<Homescreencontroller>(
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
             currentIndex: controller.currentIndex,
            onTap: (pade_index){
              controller.changepage(pade_index);
            },
            selectedItemColor: Appcolors.green_dak,
              type:BottomNavigationBarType.fixed ,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: "الرئيسية"),
                BottomNavigationBarItem(icon: Icon(Icons.article),label: "النصائح"),
                BottomNavigationBarItem(icon: Icon(Icons.person),label: "الملف الشخصي"),
              ]),
          body:  PageView(
                controller:controller.pageController ,
                children: [
                Home(),
                Favorite(),
                Tips(),
                Profile(),


              ],)
        );
      }
    );
  }
}