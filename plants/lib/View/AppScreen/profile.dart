import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(title: Text("الملف الشخصي"),centerTitle: true,),
      body: Center(child: Text("الملف الشخصي"),),

    );
  }
}