import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'View/Allplants.dart';
import 'View/AppScreen/Home.dart';
import 'View/Details_palnt.dart';
import 'View/Example.dart';
import 'View/Homescreesn.dart';
import 'View/SeeAll/Modern_uses.dart';
import 'View/Start.dart';
import 'View/search.dart';
import 'class/Service.dart';
import 'class/constant/AppRote.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'class/notification.dart';

SharedPreferences? sharedPreferences;
void main()async{

  await WidgetsFlutterBinding.ensureInitialized();
   sharedPreferences=await SharedPreferences.getInstance();
  await service_init();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilPlusInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(360, 690),
      builder: (context,child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
        // home: Error(),
         initialRoute: "/start",
          getPages: route,


        );
      }
    );
  }
}

// 1=>            نباتات الجهاز الهضمي
// 2=>  نباتات المناعة والجهاز التنفسي
// 3=>            نباتات الجهاز العصبي
// 4=>    نباتات القلب والدورة الدموية
// 5=>   نباتات الجلد والعناية بالبشرة
// 6=> نباتات الجهاز البولي والبروستاتا