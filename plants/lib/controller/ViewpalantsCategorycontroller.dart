import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../View/Details_palnt.dart';
import '../class/SqlFlit/SQLFLITE.dart';

class Viewpalantscategorycontroller extends GetxController{

List plant_cat=[];
String? cat_name;
String? name;
SqlDb sqfliteq=SqlDb();

FetshallData()async{
  List<Map> response=await sqfliteq.readData("SELECT *FROM Plants WHERE plant_category=$cat_name ");
 plant_cat.addAll(response);
 update();
 return plant_cat;
}

gotoDatilsplant(Map data){
  Get.toNamed("/DetailsPalnt",arguments: {
    "data":data
  });

}




@override
  void onInit() {
  cat_name=Get.arguments["cat"];
  name=Get.arguments["name"];
    // TODO: implement onInit
    super.onInit();
  }






}