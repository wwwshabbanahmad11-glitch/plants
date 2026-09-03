import 'package:get/get.dart';

class Detailsplantcontroller extends GetxController{
Map? data;


gotoBenefits(Map data){
  Get.toNamed("/Benefits",arguments: {
    "data":data
  });

}
gotoTradinioaluse(List data){
  Get.toNamed("/TraditionalUses",arguments: {
    "data":data
  });

}

gotoActiveIngredientsAndChemicalCompounds(List<dynamic> data){
  Get.toNamed("/ActiveIngredientsAndChemicalCompounds",arguments: {
    "data":data
  });

}
gotoModernUses(List data){
  Get.toNamed("/ModernUses",arguments: {
    "data":data
  });
}
gotoHowtouse(List<dynamic> data){
  Get.toNamed("/HowToUse",arguments: {
    "data":data,
  });
}
gotoTypicalDosages(List data){
  Get.toNamed("/TypicalDosages",arguments: {
    "data":data,
  });
}
gotowarrining(List data){
  Get.toNamed("/Warnings",arguments: {
    "data":data,
  });
}
gotoPregnancy_and_Lactation(List data){
  Get.toNamed("/PregnancyAndLactation",arguments: {
    "data":data,
  });
}

@override
  void onInit() {
  data=Get.arguments["data"];
    // TODO: implement onInit
    super.onInit();
  }
}