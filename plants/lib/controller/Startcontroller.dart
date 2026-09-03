import 'dart:convert';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:plants/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../class/SqlFlit/SQLFLITE.dart';

class Startcontroller extends GetxController{
  List Allpalnts_fromjson=[];
  SqlDb sqlDb=SqlDb();
  List Alldata=[];

  readjson()async{
    try{
      String jsonString=await rootBundle.loadString("data_infoplants/data.json");
      List data=jsonDecode(jsonString);
      Allpalnts_fromjson.addAll(data);
      for(var data in Allpalnts_fromjson){
        await sqlDb.insertDB("Plants",{
          "name_en_plant":data["name_en_plant"],
          "name_ar_plant": data["name_ar_plant"] ,
          "name_latiny_plant": data["name_latiny_plant"] ,
          "plant_category": data["plant_category"] ,
          "image_plant": data["image_plant"] ,
          "desc_plant" :data["desc_plant"] ,
          "Active_ingredients_and_chemical_compounds": jsonEncode(data["Active ingredients and chemical compounds"]),
          "benefits" : jsonEncode(data["benefits"]) ,
          "Traditional_uses" : jsonEncode(data["Traditional uses"]) ,
          "Modern_uses" : jsonEncode(data["Modern uses"]) ,
          "How_to_use" : jsonEncode(data["How to use"]) ,
          "Typical_dosages" : jsonEncode(data["Typical dosages"]) ,
          "Warnings" : jsonEncode(data["Warnings"]) ,
          "Side_effects" : jsonEncode(data["Side effects"]) ,
          "Pregnancy_and_Lactation" : jsonEncode(data["Pregnancy and Lactation"]) ,
          "Scientific_References" : jsonEncode(data["Scientific References"]),

        });
      }
      String json_example=await rootBundle.loadString("data_infoplants/examble.json");
      List data_ex=jsonDecode(json_example);
      for(Map e in data_ex){
        await sqlDb.insertDB("Example",{
          "text":e["text"],
          "image":e["image"]
        } );
      }


      sharedPreferences!.setString("1","1");
      Get.offAllNamed("/Home");
    }catch(e){

      Get.offAllNamed("/Err");
      update();
    }

  }
  FetshAlldata()async{
    var respone=await sqlDb.readDB("Plants");
    Alldata.addAll(respone);
    print(Alldata.length);
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }




}