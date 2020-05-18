import 'package:flutter/material.dart';
import 'package:Controlle_Interno/widgets/side_menu.dart';

class Layout{
  static Scaffold getContent(BuildContext context, content){
    
  
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: primary(),
        title: Text('Controlle Interno - CSI'),
      ),
      body: content,
    );
  }
// Colors

  static Color primary([ double opacity = 1 ]) => Color.fromRGBO(67, 73, 232, opacity);
  //static Color primary([ double opacity = 1 ]) => Color.fromRGBO(67, 73, 22, opacity);


}