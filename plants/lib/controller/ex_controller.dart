import 'dart:math';

import 'package:get/get.dart';

import '../class/SqlFlit/SQLFLITE.dart';

class ExController extends GetxController{

  List ex=[];
  SqlDb sqlDb=SqlDb();

  Fetchdata()async{
    ex=[];
    var response=await sqlDb.readDB("Example");
    ex.addAll(response);
    print(ex);
    update();
  }
  @override
  void onInit() {
    Fetchdata();
    // TODO: implement onInit
    super.onInit();
  }



}