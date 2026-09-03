import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plants/class/SqlFlit/SQLFLITE.dart';

class Searchcontroller extends GetxController{
 TextEditingController? word_search;
 List More_Search=[
   "الخزامى",
   "النعناع",
   "القرفة",
   "الألوفيرا"
 ];
 SqlDb sqlDb=SqlDb();
 List All_plants=[];

 List search_plant=[];

 Search()async{
   if(word_search!.text.isNotEmpty){
     search_plant.clear();
     update();
     var response=await sqlDb.readData("SELECT *FROM Plants WHERE name_ar_plant LIKE '%${word_search!.text}%'");
     search_plant.addAll(response);
     print(search_plant.length);
     update();
   }


 }
 onchange_serach(val){
   if(val==""){
     search_plant.clear();
     update();
   }

 }


 FetshAlldata()async{
   var response=await sqlDb.readDB("Plants");
   All_plants.addAll(response);
   update();
 }
 getdata_name(String name)async{
   var response=await sqlDb.readData("SELECT *FROM Plants WHERE name_ar_plant LIKE '%$name%' Limit 1");
   Get.toNamed("/DetailsPalnt",arguments: {
     "data":response.first
   });
 }

 @override
  void onInit() {
   FetshAlldata();
   word_search=TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void dispose() {
    word_search!.dispose();// TODO: implement dispose
    super.dispose();
  }


}