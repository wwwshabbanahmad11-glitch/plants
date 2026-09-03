import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:plants/main.dart';

class Middle extends GetMiddleware{
   @override
  RouteSettings? redirect(String? route) {
    // TODO: implement redirect
    if(sharedPreferences!.getString("1")=="1") return RouteSettings(name:("/Home"));
  }
}