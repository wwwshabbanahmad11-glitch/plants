import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';
import '../../class/Draw.dart';
import '../../class/constant/Appcolors.dart';
import '../../controller/SeeAll/Benefits_Controller.dart';
import '../../controller/SeeAll/HowToUsecontroller.dart';
import '../../controller/SeeAll/ModernUsescontrolle.dart';

class HowToUse extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HowToUse_State();
  }
}
class HowToUse_State extends State<HowToUse> with TickerProviderStateMixin{
  AnimationController? animationController;
  @override
  void initState() {
    animationController=AnimationController(vsync: this,lowerBound: 0,upperBound: 3.14*2,duration: Duration(seconds: 4));
    animationController!.repeat();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose(){
    animationController!.dispose();
    super.dispose();
  }
  Howtousecontroller controller=Get.put(Howtousecontroller());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Appcolors.page_fat,
      body:Stack(
        children: [
          Container(
            width: 1.sw,
            height: 1.sh,
            margin: EdgeInsets.only(top: 50.r,left: 10.r,right: 10.r),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon:Icon(Icons.arrow_back_ios,color: Appcolors.green_dak,)),
                     Expanded(child: Center(child: Text("كيفية الاستخدام",style: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))))
                  ],),
             SizedBox(height: 10.h,),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)
                  ),
                  child: Container(
                    width:1.sw,height:170.h,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:AssetImage("images/use.png") )
                  ),),
                ),
                GetBuilder<Howtousecontroller>(
                  builder: (controller) {
                    return Container(width: 1.sw,height: 400.h,child: ListView(children: [
                      ...List.generate(controller.data!.length, (i){
                        return Stack(children: [
                          Container(
                            margin: EdgeInsets.all(5.r),
                            padding: EdgeInsets.all(2.r),
                            width:1.sw,height: controller.numbercontainer!=i?90.0.h: controller.he_container,decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(color: Colors.grey.withOpacity(0.5))
                          ),),
                          Positioned(
                              top:25.r,
                              left:10.r,
                              child: CircleAvatar(radius: 20.r,child: Icon(Icons.thumb_up_alt_outlined,color: Colors.white,),backgroundColor: Appcolors.green_fat,)),
                          Positioned(
                              top:20.r,
                              right:80.r,
                              child: Column(
                                children: [
                                  Container(width: 200.w,child: Text("${controller.data![i]["use"]}",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))),
                                  Container(width:200.w,child: Text("${controller.data![i]["desc_use"]}",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize:MainAxisSize.min,
                              )),
                          Positioned(
                              top:3.r,
                              right:-8.r,
                              child:Transform.rotate(
                                angle:20,
                                child: Container(width: 60.w,height: 60.h,decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit:BoxFit.fill,
                                        image: AssetImage("images/use1.png"))
                                ),),
                              )),
                        ]);


                      }),
                      Container(width: 1.sw,height: 100.h,)

                    ],),);
                  }
                ),



              ],),
          ),
          Positioned(
            bottom: 0.r,
            right: 0.r,
            left: 0.r,
            child: CustomPaint(
              painter: BottomWavePainter(),
              size: Size(Get.width, 100.h),
            ),
          ),
          Positioned(
              bottom: 0,
              right: (Get.width/2)-100,
              left: 0,
              child:AnimatedBuilder(
                  animation: animationController!,
                  builder: (context,chlld) {
                    return Transform.rotate(
                        angle:animationController!.value ,
                        child: Image.asset("images/use2.png",width: 100.w,height: 100.h,));
                  }
              )
          ),
        ],
      ),
    );
  }
}


