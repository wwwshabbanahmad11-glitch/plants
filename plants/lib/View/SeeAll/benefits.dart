import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';
import '../../class/Draw.dart';
import '../../class/constant/Appcolors.dart';
import '../../controller/SeeAll/Benefits_Controller.dart';
import '../../controller/SeeAll/ModernUsescontrolle.dart';

class Benefits extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Benefits_State();
  }
}
class Benefits_State extends State<Benefits> with TickerProviderStateMixin{
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
  BenefitsController controller=Get.put(BenefitsController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Appcolors.page_fat,
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
                   // SizedBox(width: 110.w,),
                    Expanded(child: Center(child: Text("الفوائد",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontFamily: "Cairo"))))
                  ],),
                 SizedBox(height: 10.h,),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)
                  ),
                  child: Container(
                    width: Get.width,height:250,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:AssetImage("images/beni.png") )
                  ),),
                ),
                GetBuilder<BenefitsController>(
                  builder: (controller) {
                    return Container(width: Get.width,height: 400.h,child: ListView(
                      padding: EdgeInsets.all(0),
                      children: [
                      ...List.generate(controller.data!.length, (i){
                        if(i==0){
                          return Text("");
                        }else{
                          return Stack(children: [
                            Container(
                              margin: EdgeInsets.all(5.r),
                              padding: EdgeInsets.all(2.r),
                              width: Get.width,height: controller.numbercontainer!=i?70.0.h: controller.he_container,decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(color: Colors.grey.withOpacity(0.5))
                            ),),
                            Positioned(
                                top:25.r,
                                left:10.r,
                                child: CircleAvatar(radius: 20.r,child: Icon(Icons.thumb_up_alt_outlined,color: Colors.white,),backgroundColor: Appcolors.green_fat,)),
                            Positioned(
                                top:25.r,
                                right:70.r,
                                child: Container(

                                    alignment: Alignment.centerRight,
                                    height:controller.numbercontainer==i? controller.he_container:null,
                                    width:200.w,
                                    child: Wrap(
                                      children: [
                                        Text("${controller.data!["ben${i}"]}",overflow:controller.numbercontainer==i?null: TextOverflow.ellipsis,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak)),
                                        ?controller.data!["ben${i}"].length<37 || controller.numbercontainer==i?null:    InkWell(
                                          child: Text("إقرأ المزيد",style: TextStyle(color:Appcolors.green_fat),),
                                          onTap: (){
                                            controller.heightContainer(i,200.0);
                                          },),
                                      ],
                                    ))),


                           //  Positioned(
                           //      top:30,
                           //      right:70,
                           // child: Container(
                           //     width:200,
                           //     child: Text("${controller.data!["ben${i}"]}",textAlign: TextAlign.right,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Appcolors.green_dak)))),
                            Positioned(
                                top:3.r,
                                right:-7.r,
                                child:Transform.rotate(
                                  angle:20,
                                  child: Container(width: 60.w,height: 60.h,decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit:BoxFit.fill,
                                          image: AssetImage("images/ani2.png"))
                                  ),),
                                )),
                          ]);
                        }

                      }),
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
              bottom: 0.r,
              right: (Get.width/2)-100,
              left: 0.r,
              child:AnimatedBuilder(
                animation: animationController!,
                builder: (context,chlld) {
                  return Transform.rotate(
                      angle:animationController!.value ,
                      child: Image.asset("images/ani2.png",width: 80.w,height: 80.h,));
                }
              )
          ),
        ],
      ),
    );
  }
}


