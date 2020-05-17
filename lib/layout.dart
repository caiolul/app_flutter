import 'package:flutter/material.dart';
import 'package:Controlle_Interno/widgets/side_menu.dart';

class Layout{
  static Scaffold getContent(BuildContext context, content){
    
  
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(67, 73, 232, 1),
        title: Text('Controlle Interno - CSI'),
      ),
      body: content,
    );
  }
}