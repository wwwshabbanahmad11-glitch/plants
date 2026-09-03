import 'dart:convert';

import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../class/constant/Appcolors.dart';
import '../controller/Detailsplantcontroller.dart';

class DetailsPalnt extends GetView<Detailsplantcontroller>{
   @override
  Widget build(BuildContext context) {
     Get.put(Detailsplantcontroller());
    // TODO: implement build
    return Scaffold(

      backgroundColor: Appcolors.page_fat,
      body:Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
           Container(
             width:1.sw,
             height: 1.sh,
           ),

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.r),bottomRight: Radius.circular(25.r)),
            ),
            child: Container(
              width: 1.sw,
              height:200.h,
              decoration: BoxDecoration(
                 // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.r),bottomRight: Radius.circular(25.r)),
                  image:DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/${controller.data!["image_plant"]}")) ),
            ),
          ),
            Positioned(
                top: 35.r,
                left: 10.r,
                child: IconButton(onPressed: (){
                  Get.back();
                }, icon: Icon(Icons.arrow_back,color:Colors.green,))),
          Positioned(
            top: 210.r,
            //right: 1.r,
            // left: 1.r,
            bottom: 0.r,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r))
              ),
              child: Container(
                padding: EdgeInsets.all(10.r),
                width: 1.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: ListView(
                  padding: EdgeInsets.all(3.r),
                  children: [
                  Text("${controller.data!["name_ar_plant"]}",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak
                  )),
                   Text("${controller.data!["name_en_plant"]}",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.subtitle)),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.r),
                            decoration: BoxDecoration(
                              color: Appcolors.green_fat,
                              borderRadius: BorderRadius.circular(5.r)
                            ),
                            child: Text("${controller.data!["name_latiny_plant"]}",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.subtitle,))),
                    ),

                  SizedBox(height: 10.h,),
                  Row(children: [
                    Expanded(
                      child:InkWell(
                        onTap: (){
                          controller.gotowarrining(jsonDecode(controller.data!["Warnings"]));

                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r)
                        ),
                          child: Container(
                            decoration: BoxDecoration(
                            color: Appcolors.border,
                            borderRadius: BorderRadius.circular(20.r)
                          ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                              Icon(Icons.warning,size: 25,color: Appcolors.green_dak,),
                              Text("التحذيرات",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))
                            ],),
                          ),
                        ),
                      )
                    ),
                    Expanded(
                        child:InkWell(
                          onTap: (){
                            controller.gotoBenefits(jsonDecode(controller.data!["benefits"]));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r)
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Appcolors.border,
                                  borderRadius: BorderRadius.circular(20.r)
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.health_and_safety_sharp,size: 25,color: Appcolors.green_dak,),
                                  Text("الفوائد",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))
                                ],),
                            ),
                          ),
                        )
                    ),
                    Expanded(
                        child:InkWell(
                          onTap: (){
                            controller.gotoHowtouse(jsonDecode(controller.data!["How_to_use"]));

                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r)
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Appcolors.border,
                                  borderRadius: BorderRadius.circular(20.r)
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.person,size: 25,color: Appcolors.green_dak,),
                                  Text("الاستخدام",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))
                                ],),
                            ),
                          ),
                        )
                    ),
                   
                  ],),
                  SizedBox(height: 5.h,),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(25.r)
                      ),

                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.all(10.r),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Text("${controller.data!["desc_plant"]}",textAlign: TextAlign.right,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15.sp,color: Appcolors.green_dak))),  ),
                          Expanded(child: Image.asset("images/start2.png")),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                          Text("أقسام النبات",textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp,color: Appcolors.green_dak)),
                           Card(
                             margin: EdgeInsets.all(2.r),
                             elevation: 0,
                             color: Colors.white,
                             child: ListTile(

                               onTap: (){
                                 controller.gotoTradinioaluse(jsonDecode(controller.data!["Traditional_uses"]));
                             
                               },
                               contentPadding: EdgeInsets.symmetric(horizontal: 3.r,vertical: 0.5.r),
                               dense: true,
                               leading:Icon(Icons.auto_stories,color: Appcolors.green_dak,),subtitle: Text("طرق الاستعمال في الطب الشعبي",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.subtitle),textDirection: TextDirection.rtl),title: Text("الاستخدامات التقليدية",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Appcolors.green_dak),textDirection: TextDirection.rtl,),trailing: Icon(Icons.arrow_circle_right_outlined,size: 20,color: Appcolors.green_dak,)),
                           ),

                           Card(
                             margin: EdgeInsets.all(2.r),
                             elevation: 0,
                             color: Colors.white,
                             child: ListTile(
                               onTap: (){
                                 controller.gotoModernUses(jsonDecode(controller.data!["Modern_uses"]));

                               },
                               contentPadding: EdgeInsets.symmetric(horizontal: 3.r,vertical: 0.5.r),
                               dense: true,
                               leading:Icon(Icons.biotech,color: Appcolors.green_dak,),subtitle: Text("الدراسات العلمية والطرق الحديثة",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.subtitle),textDirection: TextDirection.rtl),title: Text("الاستخدامات الحديثة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Appcolors.green_dak),textDirection: TextDirection.rtl,),trailing: Icon(Icons.arrow_circle_right_outlined,size: 20,color:  Appcolors.green_dak,)),
                           ),

                             Card(
                               margin: EdgeInsets.all(2.r),
                               elevation: 0,
                               color: Colors.white,
                               child: ListTile(
                                 onTap: (){
                                   controller.gotoTypicalDosages(jsonDecode(controller.data!["Typical_dosages"]));

                                 },
                                 contentPadding: EdgeInsets.symmetric(horizontal: 3.r,vertical: 0.5.r),
                                 dense: true,
                                 leading:Icon(Icons.vaccines,color: Appcolors.green_dak,),subtitle: Text("الجرعات الموصى بها",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.subtitle),textDirection: TextDirection.rtl),title: Text("الجرعات الطبيعية",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Appcolors.green_dak),textDirection: TextDirection.rtl,),trailing: Icon(Icons.arrow_circle_right_outlined,size: 20,color:  Appcolors.green_dak,)),
                             ),

                             Card(
                               margin: EdgeInsets.all(2.r),
                               elevation: 0,
                               color: Colors.white,
                               child: ListTile(
                                 onTap: (){
                                   controller.gotoPregnancy_and_Lactation(jsonDecode(controller.data!["Pregnancy_and_Lactation"]));

                                 },
                                 contentPadding: EdgeInsets.symmetric(horizontal: 3.r,vertical: 0.5.r),
                                 dense: true,
                                 leading:Icon(Icons.baby_changing_station_outlined,color: Appcolors.green_dak,),subtitle: Text("التأثير على الجنين والأم",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.subtitle),textDirection: TextDirection.rtl),title: Text("الحمل والرضاعة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp,color: Appcolors.green_dak),textDirection: TextDirection.rtl,),trailing: Icon(Icons.arrow_circle_right_outlined,size: 20.r,color:  Appcolors.green_dak,)),
                             ),

                    ],),




                ],),
              ),
            ),
          ),
        ],),
      ) ,
    );
  }
}