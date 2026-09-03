import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';
import 'package:plants/class/constant/Appcolors.dart';

import '../controller/Allcatetorycontroller.dart';
class Allcatetory extends GetView<Allcatetorycontroller>{
   @override
  Widget build(BuildContext context) {
     Get.put(Allcatetorycontroller());
    // TODO: implement build
    return Scaffold(
      backgroundColor: Appcolors.page_fat,
      appBar: AppBar(centerTitle: true,title: Text("تصنيفات النباتات",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,)),),
      body: Container(
        margin: EdgeInsets.all(10.r),
        child: ListView(children: [
          ...List.generate(controller.plant_cat.length, (i){
            return InkWell(
              onTap: (){
             controller.gotoViewpalantsCategory(controller.plant_cat[i]["cat"]!,controller.plant_cat[i]["name"]!);
              },
              child: Card(
                color: Appcolors.green_fat,
                child: Container(
                  width:1.sw,
                  height: 200.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Expanded(
                    flex:2,
                    child: Container(height:200.h ,width: 170.w,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("${controller.plant_cat[i]["image"]}")),
                    ),),
                  ),
                    Expanded(
                        flex:2,
                        child:  Text("  ${controller.plant_cat[i]["name"]}",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontSize: 17.sp),))

                    ],),),),
            );
          })
        
        
        
        
        ],),
      ),


    );
  }
}