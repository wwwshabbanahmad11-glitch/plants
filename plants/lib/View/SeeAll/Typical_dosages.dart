import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';
import '../../class/Draw.dart';
import '../../class/constant/Appcolors.dart';
import '../../controller/SeeAll/ModernUsescontrolle.dart';
import '../../controller/SeeAll/TypicalDosagescontroller.dart';

class TypicalDosages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TypicalDosages_State();
  }
}
class TypicalDosages_State extends State<TypicalDosages> with TickerProviderStateMixin{
  AnimationController? animationController;
  @override
  void initState() {
    animationController=AnimationController(vsync: this,lowerBound: 0,upperBound: 260,duration: Duration(seconds: 4));
    animationController!.repeat(reverse: true);
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose(){
    animationController!.dispose();
    super.dispose();
  }
  Typicaldosagescontroller controller=Get.put(Typicaldosagescontroller());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Appcolors.page_fat,
      body:Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            margin: EdgeInsets.only(top: 50.r,left: 10.r,right: 10.r),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon:Icon(Icons.arrow_back_ios,color: Appcolors.green_dak,)),
                    Expanded(child: Center(child: Text("الجرعات الطبيعية",style: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))))
                  ],),
               SizedBox(height: 10.h,),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)
                  ),
                  child: Container(
                    width: 1.sw,height:180.h,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:AssetImage("images/scal.png") )
                  ),),
                ),

                     GetBuilder<Typicaldosagescontroller>(
                       builder: (controller) {
                         return Container(width:1.sw,height: 400.h,child: ListView(
                           padding: EdgeInsets.all(1.r),
                           children: [
                          ...List.generate(controller.data!.length, (i){
                            return Stack(children: [
                              Container(
                                margin: EdgeInsets.all(5.r),
                                padding: EdgeInsets.all(2.r),
                                width: 1.sw,height:controller.numbercontainer!=i?70.0.h: controller.he_container,decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: Colors.grey.withOpacity(0.5))
                              ),),
                              Positioned(
                                  top:25.r,
                                  left:10.r,
                                  child: CircleAvatar(radius: 20.r,child: Icon(Icons.thumb_up_alt_outlined,color: Colors.white,),backgroundColor: Appcolors.green_fat,)),
                              Positioned(
                                  top:30.r,
                                  right:80.r,
                                  child: Container(
                                      alignment: Alignment.centerRight,
                                      height:controller.numbercontainer==i? 120:null,
                                      width:200,
                                      child: Wrap(
                                        children: [
                                          Text("${controller.data![i]}",overflow:controller.numbercontainer==i?null: TextOverflow.ellipsis,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Appcolors.green_dak)),
                                          ?controller.data![i].length<37 || controller.numbercontainer==i?null:    InkWell(
                                              child: Text("إقرأ المزيد",style: TextStyle(color:Appcolors.green_fat),),
                                            onTap: (){
                                                controller.heightContainer(i,200.0);
                                            },),
                                        ],
                                      ))),
                              Positioned(
                                top:3.r,
                                right:-10.r,
                                child: Container(width: 85.w,height: 85.h,decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit:BoxFit.fill,
                                        image: AssetImage("images/scal2.png"))
                                ),),
                              ),
                            ]);
                          }),
                          Container(width: 1.sw,height: 100.h
                            ,)],),);
                       }
                     )

              ],),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: CustomPaint(
              painter: BottomWavePainter(),
              size: Size(Get.width, 100.h),
            ),
          ),
          AnimatedBuilder(
            animation: animationController!,
            builder: (context,child) {
              return Positioned(
                  bottom: 0,
                  right: animationController!.value,

                  child:Image.asset("images/scal2.png",width: 100.w,height: 100.h,)
              );
            }
          ),
        ],
      ),
    );
  }
}


