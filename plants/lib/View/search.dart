import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';
import 'package:plants/class/constant/Appcolors.dart';
import '../controller/searchcontroller.dart';

class Search extends GetView<Searchcontroller>{
  @override
  Widget build(BuildContext context) {
    Get.put(Searchcontroller());
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Appcolors.page_fat,centerTitle: true,title: Text("ابحث عن نبات",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak)),),
      backgroundColor: Appcolors.page_fat,
      body: GetBuilder<Searchcontroller>(
        builder: (controller) {
          return Container(
            margin: EdgeInsets.all(15.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              TextFormField(
                onChanged: (val){
                  controller.onchange_serach(val);

                },
                controller:controller.word_search,
                 textDirection:TextDirection.rtl ,
                    decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 6.w),
                    isDense: true,
                    hint: Text("ابحث هنا..",textDirection:TextDirection.rtl ,style: TextStyle(color: Colors.grey),),
                    prefixIcon: IconButton(onPressed: (){
                      controller.Search();
                    }, icon:Icon(Icons.search_rounded)),
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
              Padding(
                  padding: EdgeInsets.all(15.r),
                  child: Text("الأكثر بحثاً",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))),
             Row(children: [
               ...List.generate(controller.More_Search.length, (i){
                   return Expanded(child: InkWell(
                     onTap: (){
                     controller.getdata_name(controller.More_Search[i]);
                     },
                     child: Container(
                       alignment: Alignment.center,
                       margin: EdgeInsets.all(3.r),
                       padding: EdgeInsets.all(7.r),
                       decoration: BoxDecoration(
                         color: Appcolors.green_fat,
                         borderRadius: BorderRadius.circular(17.r)
                       ),
                       child: Text("${controller.More_Search[i]}",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.primaryDark)),),
                   ));
               })  ,

             ],),
              Padding(
                  padding: EdgeInsets.all(15.r),
                  child:controller.search_plant.isEmpty && controller.word_search!.text.isEmpty? Text("جميع النباتات",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak)):Text("نتائج البحث",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))),
           controller.search_plant.isNotEmpty && controller.word_search!.text.isNotEmpty?
           Expanded(
             child: Container(
               child:controller.All_plants.isEmpty?Center(child: CircularProgressIndicator(strokeAlign: 10,color: Appcolors.green_dak,)): ListView(
                 children: [
                   ...List.generate(controller.search_plant.length, (i){
                     return  InkWell(
                       onTap: (){
                         Get.toNamed("/DetailsPalnt",arguments: {
                           "data":controller.search_plant[i]
                         });
                       },
                       child: Card(
                         shape: RoundedRectangleBorder(
                             borderRadius:BorderRadius.circular(17.r)
                         ),
                         child: Container(

                           padding: EdgeInsets.all(2.r),
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(17.r)
                           ),
                           child: Row(
                             //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             textDirection:TextDirection.rtl,
                             children: [
                               Expanded(flex: 1,child: Container(
                                 width: 60.w,
                                 height: 60.h,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         fit:BoxFit.fill,
                                         image: AssetImage("images/${controller.search_plant[i]["image_plant"]}")),
                                     borderRadius: BorderRadius.circular(10.r)
                                 ),
                               )),
                               Expanded(flex:4,child: Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 10.w),
                                   child: Text("${controller.search_plant[i]["name_ar_plant"]}",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.primary)))),
                             ],
                           ),),
                       ),
                     );
                   })
                 ],),),
           )



               :controller.word_search!.text.isNotEmpty &&controller.search_plant.isEmpty?Center(child: Padding(
               padding: EdgeInsets.symmetric(vertical: 50.h),
               child: Text("لا يوجد نبات بهذا الاسم",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.subtitle))),): Expanded(
               child: Container(
                 child:controller.All_plants.isEmpty?Center(child: CircularProgressIndicator(strokeAlign: 10,color: Appcolors.green_dak,)): ListView(
                 children: [
                   ...List.generate(controller.All_plants.length, (i){
                     return  InkWell(
                       onTap: (){
                         Get.toNamed("/DetailsPalnt",arguments: {
                           "data":controller.All_plants[i]
                         });
                       },
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius:BorderRadius.circular(17.r)
                         ),
                         child: Container(

                           padding: EdgeInsets.all(2.r),
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(17.r)
                           ),
                           child: Row(
                         //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             textDirection:TextDirection.rtl,
                             children: [
                               Expanded(flex: 1,child: Container(
                                 width: 60.w,
                                 height: 60.h,
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                       fit:BoxFit.fill,
                                       image: AssetImage("images/${controller.All_plants[i]["image_plant"]}")),
                                   borderRadius: BorderRadius.circular(10.r)
                                 ),
                                   )),
                               Expanded(flex:4,child: Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 10.w),
                                   child: Text("${controller.All_plants[i]["name_ar_plant"]}",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.primary)))),
                             ],
                           ),),
                       ),
                     );
                   })
               ],),),
             )
            ],),

          );
        }
      ),
      
    );
  }
}