import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../class/constant/Appcolors.dart';

class SideEffects extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("",style: TextStyle(fontWeight: FontWeight.bold,color: Appcolors.green_dak,fontFamily: "Cairo")),centerTitle: true,),

    );
  }
}