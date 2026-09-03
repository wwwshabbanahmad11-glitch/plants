import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../class/constant/Appcolors.dart';

class Err extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: Text("التطبيق غير متوافق مع جهازك يرجى المعذرة",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontFamily: "Cairo")),),

    );
  }
}