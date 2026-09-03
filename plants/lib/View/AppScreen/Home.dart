import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:plants/class/constant/Appcolors.dart';
import 'package:plants/controller/Appscreen/Homecontroller.dart';

import '../../class/constant/ImageAsset.dart';

class Home extends GetView<Homecontroller>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBody: false,
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        centerTitle: true,title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_florist,color: Colors.red,),
            Text("مرحباً بك",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontFamily: "Cairo"),),
            Icon(Icons.local_florist,color: Colors.red,),
          ],
        ),),
    //  drawer: Drawer(),
      body: GetBuilder<Homecontroller>(
        init:Homecontroller() ,
        builder: (controller) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal:10.r),
            child: Column(children: [
            TextFormField(
              onTap: (){
                Get.toNamed("/Search");
              },
              textDirection:TextDirection.rtl ,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 1.r),
                isDense: true,
               hint: Text("ابحث عن نبات..",textDirection:TextDirection.rtl ,style: TextStyle(color: Colors.grey),),
                suffixIcon: Icon(Icons.search_rounded),
                filled: true,
                fillColor: Colors.white,
                focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(color: Appcolors.green_dak)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r)
                )
              ),
            ),
              SizedBox(height: 10.h,),
              Stack(children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)
                  ),
                  child: Container(width: Get.width,height: 160.h,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(Imageasset.im1))
                  ),),
                ),
                PositionedDirectional(
                    top:15.r ,
                    end: 15.r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                   Text("حكمة ",style: TextStyle(color: Appcolors.green_fat,fontWeight: FontWeight.bold,fontFamily: "Cairo",fontSize: 15.sp),),
                  SizedBox(height: 5,),
                   Text("${controller.ex}",
                     textDirection: TextDirection.rtl,textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w700,color:Appcolors.page_fat,fontSize: 13.sp),),
                    SizedBox(height:30.h,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 15.r,vertical: 1.r),
                          backgroundColor: Colors.white),
                        onPressed: (){
                        Get.toNamed("/Example");
                        }, child: Text("اقرأ المزيد",style:  TextStyle(color: Appcolors.green_dak,fontWeight: FontWeight.bold,fontSize: 13.sp),),)
                ],))
              ],),
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){
                        controller.GotoAllcat();
                      },
                      child: Text("عرض الكل",textDirection: TextDirection.rtl,style: TextStyle(color: Appcolors.green_dak,fontWeight: FontWeight.bold,fontSize: 12.sp,fontFamily:"Cairo" ))),
                  Text("تصنيفات النباتات",textDirection: TextDirection.rtl,style: TextStyle(color: Appcolors.green_dak,fontWeight: FontWeight.bold,fontSize: 17.sp,fontFamily:"Cairo" ),),
                ],
              ),
              SizedBox(height: 8.r,),
              Container(
                width: Get.width,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  ...List.generate(controller.plant_cat.length, (i){
                    return Expanded(
                      child: InkWell(
                        onTap: (){
                          controller.Gotoplantviewcat(controller.plant_cat[i]["cat"]!,controller.plant_cat[i]["name"]!);
                        },
                            child: Card(
                              color: Colors.white,
                              child: Container(
                                color: Colors.white,
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(3.5.r),
                               width: (Get.width-18.5.w)/5,
                                height: 80.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset("${controller.plant_cat[i]["image"]}",height: 30.h,width: 33.w,color:Appcolors.green_fat,),
                                    Text("${controller.plant_cat[i]["name"]}",textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontSize: 10.sp,fontFamily:"Cairo" )) ,

                                  ],),
                                ),
                            ),


                      ),
                    );
                  })
                ],),
              ),
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){
                        Get.toNamed("/Allplants");
                      },
                      child: Text("عرض الكل",textDirection: TextDirection.rtl,style: TextStyle(color: Appcolors.green_dak,fontWeight: FontWeight.bold,fontSize: 12.sp,fontFamily:"Cairo" ))),
                  Text("نباتات مميزة",textDirection: TextDirection.rtl,style: TextStyle(color: Appcolors.green_dak,fontWeight: FontWeight.bold,fontSize: 17.sp,fontFamily:"Cairo" ),),
                ],
              ),
              SizedBox(height: 8.h,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(3, (i){
                    return Expanded(
                      child:  Card(
                          color: Colors.white,
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(4.r),
                            width: (Get.width-19.w)/4,
                            height: 150.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                              Container(width: 80.w,height: 95.h,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("${controller.plant_distinct[i]["image"]}")),

                              ),),
                                Text("${controller.plant_distinct[i]["name"]}",textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontSize: 15.sp,fontFamily:"Cairo" )) ,
                                Text("${controller.plant_distinct[i]["ben"]}",textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontSize: 10.sp,fontFamily:"Cairo" )) ,

                              ],),
                          ),
                        ),

                    );
                  })
                ],),
              Row(children: [
                Expanded(child: Image.asset("images/1.webp")),
                Expanded(child: Image.asset("images/1.webp")),
                Expanded(child: Image.asset("images/1.webp")),
                Expanded(child: Image.asset("images/1.webp")),
              ],)

            ],),
          );
        }
      ),

    );
  }
}