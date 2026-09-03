import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';
import '../../class/Draw.dart';
import '../../class/constant/Appcolors.dart';
import '../../controller/SeeAll/PregnancyAndLactationcontroller.dart';
import '../../controller/SeeAll/Warningscontroller.dart';

class PregnancyAndLactation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PregnancyAndLactation_State();
  }
}
class PregnancyAndLactation_State extends State<PregnancyAndLactation> with TickerProviderStateMixin{
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
  Pregnancyandlactationcontroller controller=Get.put(Pregnancyandlactationcontroller());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:Colors.white,
      body:Stack(
        children: [
          Container(
            width:1.sw,
            height:1.sh,
            margin: EdgeInsets.only(top: 50.r,left: 10.r,right: 10.r),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon:Icon(Icons.arrow_back_ios,color: Appcolors.green_dak,)),

                    Expanded(child: Center(child: Text("الحمل والرضاعة",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontFamily: "Cairo"))))
                  ],),
               SizedBox(height: 10.h,),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    width: 1.sw,height:170.h,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:AssetImage("images/baby.png") )
                  ),),
                ),
                GetBuilder<Pregnancyandlactationcontroller>(
                  builder: (controller) {
                    return Container(width: 1.sw,height: 400.h,child: ListView(children: [
                      ...List.generate(controller.data!.length, (i){
                        return Stack(children: [
                          Container(
                            margin: EdgeInsets.all(5.r),
                            padding: EdgeInsets.all(2.r),
                            width: 1.sw,height: controller.numbercontainer!=i?70.0.h: controller.he_container,decoration: BoxDecoration(
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
                                  height:controller.numbercontainer==i? 120.h:null,
                                  width:200.w,
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
                          // Positioned(
                          //     top:30,
                          //     right:75,
                          //     child: Container(
                          //         alignment: Alignment.centerRight,
                          //         width:250,
                          //         child: Text("${controller.data![i]}",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Appcolors.green_dak)))),
                          Positioned(
                            top:3.r,
                            right:-10.r,
                            child: Container(width: 70.w,height: 70.h,decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit:BoxFit.fill,
                                    image: AssetImage("images/baby1.png"))
                            ),),
                          ),
                        ]);
                      }),
                      Container(width: 1.sw,height: 100.h,)

                    ],),);
                  }
                ),
              ],),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: CustomPaint(
              painter: BottomWavePainter(),
              size: Size(Get.width, 100),
            ),
          ),
          AnimatedBuilder(
              animation: animationController!,
              builder: (context,child) {
                return Positioned(
                    bottom: 0,
                    right: animationController!.value,

                    child:Image.asset("images/baby2.png",width: 80,height: 80,)
                );
              }
          ),
        ],
      ),
    );
  }
}


