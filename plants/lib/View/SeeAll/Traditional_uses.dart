import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get/get.dart';
import '../../class/Draw.dart';
import '../../class/constant/Appcolors.dart';
import '../../controller/SeeAll/Benefits_Controller.dart';
import '../../controller/SeeAll/ModernUsescontrolle.dart';
import '../../controller/SeeAll/TraditionalUsescontroller.dart';

class TraditionalUses extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TraditionalUses_State();
  }
}
class TraditionalUses_State extends State<TraditionalUses> with TickerProviderStateMixin{
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
  Traditionalusescontroller controller=Get.put(Traditionalusescontroller());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Appcolors.page_fat,
      body:Stack(children: [
        Container(
          width:1.sw,
          height:1.sh,
          margin: EdgeInsets.only(top: 50.r,left: 10.r,right: 10.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon:Icon(Icons.arrow_back_ios,color: Appcolors.green_dak,)),

                  Expanded(child: Center(child: Text("الاستخدامات التقليدية",style: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak))))
                ],),
            SizedBox(height: 10.h,),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Container(
                  width:1.sw,height:170.h,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:AssetImage("images/trad.png") )
                ),),
              ),
              GetBuilder<Traditionalusescontroller>(
                builder: (controller) {
                  return Container(width:1.sw,height: 400.h,child: ListView(
                    padding: EdgeInsets.all(0.r),
                    children: [
                      ...List.generate(controller.data!.length, (i){
                        return Stack(children: [
                          Container(
                            margin: EdgeInsets.all(5.r),
                            padding: EdgeInsets.all(2.r),
                            width:1.sw,height: controller.numbercontainer!=i?70.0.h: controller.he_container,decoration: BoxDecoration(
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
                                  width:250.w,
                                  child: Wrap(
                                    children: [
                                      Text("${controller.data![i]}",overflow:controller.numbercontainer==i?null: TextOverflow.ellipsis,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Appcolors.green_dak)),
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
                              child:Transform.rotate(
                                angle:20,
                                child: Container(width: 70.w,height: 70.w,decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit:BoxFit.fill,
                                        image: AssetImage("images/trad2.png"))
                                ),),
                              )),
                        ]);


                      }),
                      Container(width:1.sw,height: 200,)
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
            size: Size(Get.width, 120),
          ),
        ),
        Positioned(
            bottom: 0,
            right: (Get.width/2)-100,
            left: 0,
            child: Image.asset("images/trad2.png",width: 100,height: 100,)


        ),
      ],),



    );
  }
}


