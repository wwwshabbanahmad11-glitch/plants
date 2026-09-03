import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:plants/class/constant/Appcolors.dart';
import 'package:get/get.dart';

import '../controller/ex_controller.dart';
class Example extends GetView<ExController>{
  @override
  Widget build(BuildContext context) {
    Get.put(ExController());
    // TODO: implement build
    return ScreenUtilPlusInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
      return Scaffold(
        backgroundColor: Appcolors.background ,
        body:GetBuilder<ExController>(
          builder: (controller) {
            return Container(
              margin: EdgeInsets.only(top:35.h,right: 10.w,left: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: IconButton(onPressed: (){ Get.back();}, icon:Icon(Icons.arrow_back_ios_new_outlined,color: Appcolors.primary,))),
                    Expanded(
                      flex: 30,
                      child: Text("جميع الحكم والأمثال",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25.sp,color: Appcolors.primary,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              Padding(
                  padding: EdgeInsets.only(left: 25.w),
                  child: Text("من نور الطبيبة ......... الى نور القلوب",textAlign: TextAlign.center,style: TextStyle(color: Appcolors.subtitle,fontSize: 20.sp),)),
              Image.asset("images/plant.png",width:30.w ,height: 30.h,),
            controller.ex.isEmpty?CircularProgressIndicator():  Container(width: Get.width,height: 550.h,child: ListView(
                padding: EdgeInsets.all(3.w),
                children: [
                ...List.generate(controller.ex.length,(i){
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.r)
                    ),
                    child: Container(
                      decoration:BoxDecoration(
                          color: Appcolors.card,
                          border: Border.all(color: Appcolors.border),
                          borderRadius: BorderRadius.circular(25.r)
                      ),
                      width: Get.width,height: 120.h,child: Row(children: [
                      Expanded(flex: 2,child: Text("${controller.ex[i]["text"]}",textDirection: TextDirection.rtl,textAlign: TextAlign.center,style: TextStyle(color: Appcolors.primaryDark,fontSize: 17.sp),)),

                      Expanded(child: Image.asset("images/ex/${controller.ex[i]["image"]}",width:100.w ,height: 200.h,)),


                    ],),),
                  );
                })
              ],),),



            ],),);
          }
        )
      );
    },);
  }
}