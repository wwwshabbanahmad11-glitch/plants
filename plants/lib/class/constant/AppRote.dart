
import 'package:get/get.dart';

import '../../View/Allcatetory.dart';
import '../../View/Allplants.dart';
import '../../View/AppScreen/Favorite.dart';
import '../../View/AppScreen/Home.dart';
import '../../View/AppScreen/Tips.dart';
import '../../View/AppScreen/profile.dart';
import '../../View/Details_palnt.dart';
import '../../View/Error.dart';
import '../../View/Example.dart';
import '../../View/Homescreesn.dart';
import '../../View/SeeAll/How_to_use.dart';
import '../../View/SeeAll/Modern_uses.dart';
import '../../View/SeeAll/Pregnancy_and_Lactation.dart';
import '../../View/SeeAll/Traditional_uses.dart';
import '../../View/SeeAll/Typical_dosages.dart';
import '../../View/SeeAll/Warnings.dart';
import '../../View/SeeAll/benefits.dart';
import '../../View/Start.dart';
import '../../View/ViewPalants_category.dart';
import '../../View/search.dart';
import '../Middleware.dart';

List<GetPage<dynamic>> route=[
  GetPage(name: "/start", page:()=> Start(),middlewares: [
 Middle(),
  ]),
  GetPage(name: "/Homescreesn", page:()=> Homescreesn()),
  GetPage(name: "/Home", page:()=> Home()),
  GetPage(name: "/Favorite", page:()=> Favorite()),
  GetPage(name: "/Profile", page:()=> Profile()),
  GetPage(name: "/Tips", page:()=> Tips()),
  GetPage(name: "/Allcatetory", page:()=> Allcatetory()),
  GetPage(name: "/DetailsPalnt", page:()=> DetailsPalnt()),
  GetPage(name: "/ViewpalantsCategory", page:()=> ViewpalantsCategory()),
  GetPage(name: "/Benefits", page:()=> Benefits()),
  GetPage(name: "/TraditionalUses", page:()=> TraditionalUses()),
  GetPage(name: "/ModernUses", page:()=> ModernUses()),
  GetPage(name: "/HowToUse", page:()=> HowToUse()),
  GetPage(name: "/TypicalDosages", page:()=> TypicalDosages()),
  GetPage(name: "/Warnings", page:()=> Warnings()),
  GetPage(name: "/PregnancyAndLactation", page:()=> PregnancyAndLactation()),
  GetPage(name: "/Example", page:()=> Example()),
  GetPage(name: "/Search", page:()=> Search()),
 GetPage(name: "/Allplants", page:()=> Allplants()),
 GetPage(name: "/Err", page:()=> Err()),




];