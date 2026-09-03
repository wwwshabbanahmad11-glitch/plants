import 'package:get/get.dart';
import 'package:plants/class/SqlFlit/SQLFLITE.dart';

class AllplantController extends GetxController{

SqlDb sqlDb=SqlDb();
List data=[];
gotoDatilsplant(Map data){
  Get.toNamed("/DetailsPalnt",arguments: {
    "data":data
  });

}
  FetshallData()async{
    data.clear();
   var response= await sqlDb.readDB("Plants");
   data.addAll(response);
   update();
   print(data.length);
   return data;

  }

}