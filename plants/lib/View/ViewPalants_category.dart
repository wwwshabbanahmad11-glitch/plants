import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../class/constant/Appcolors.dart';
import '../controller/ViewpalantsCategorycontroller.dart';

class ViewpalantsCategory extends GetView<Viewpalantscategorycontroller>{
  
   @override
  Widget build(BuildContext context) {
     Get.put(Viewpalantscategorycontroller());
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title:Text("${controller.name}",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontFamily: "Cairo")),centerTitle: true,),
      body: Container(
        margin: EdgeInsets.all(10.r),
        child: FutureBuilder(
          future: controller.FetshallData(),
          builder: (BuildContext context,AsyncSnapshot<List>snapshot) {
            if(snapshot.hasData){
              return GridView.builder(
                  itemCount: snapshot.data!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context,i){
                    return InkWell(
                      onTap: (){
                        controller.gotoDatilsplant(snapshot.data![i]);
                      },
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          height: 150.h,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(height: 120.h,decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("images/${snapshot.data![i]["image_plant"]}"))
                                ),),
                              ),

                              Expanded(
                                  flex: 1,
                                  child: Text("${snapshot.data![i]["name_ar_plant"]}",textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontSize: 15.sp,fontFamily:"Cairo" )))


                            ],),),),
                    );
                  });
            }else{
              return Center(child: CircularProgressIndicator(),);
            }

          }
        ),
      ),
    );
    
  }
}