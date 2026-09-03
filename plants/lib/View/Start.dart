import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';

import '../class/constant/Appcolors.dart';
import '../class/constant/ImageAsset.dart';
import '../controller/Startcontroller.dart';
import 'Homescreesn.dart';
class Start extends GetView<Startcontroller>{
  @override
  Widget build(BuildContext context) {
    Get.put(Startcontroller());
    // TODO: implement build
    return Scaffold(
      backgroundColor: Appcolors.page_fat,
      body:SingleChildScrollView(
        child: Container(
        alignment: Alignment.center,
        width: Get.width,
        height: Get.height,
        margin: EdgeInsets.only(right:3.w,left:3.w, top: 70.h),
        child: Column(
          children: [
          Container(
              width: 90.w,
              height: 90.h,
              child: Image.asset(Imageasset.start2)),
            Text("نبتة",style: TextStyle(fontSize: 50.sp,fontFamily: "Tajawal",fontWeight: FontWeight.bold,color: Appcolors.green_dak),),
            Text("اكتشف عالم النباتات وفوائدها".tr,textAlign: TextAlign.center,style:TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,fontFamily: "Tajawal",color: Appcolors.green_dak),),
           SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Opacity(opacity: 0.2,child: Image.asset(Imageasset.start4,))),
                Expanded(
                    flex: 3,
                    child: Image.asset(Imageasset.start,)),
              ],
            ),
            SizedBox(height: 30.h,),
          Stack(
                alignment: Alignment.center,
            children: [
              Container(
                width: Get.width,
                height: 150.h,
                alignment: Alignment.centerRight,
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: 100.w,height: 100.h,decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(Imageasset.start5))
                ),),
              ),
              Positioned(
                top: 70.h,

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 80),
                      backgroundColor: Appcolors.green_dak
                    ),
                    onPressed: (){
                     // Get.toNamed("/Homescreesn");
                 controller.readjson();
                    }, child:Text("لنبدأ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,fontFamily: "Cairo" ),)),
              ),
            ],
          )
        ],),
            ),
      ) ,);
  }
}