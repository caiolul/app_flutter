import 'package:flutter/material.dart';
import 'package:Controlle_Interno/widgets/side_menu.dart';

class Layout{
  static Scaffold getContent(BuildContext context, content){
    
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: primaryColor(),
        title: Text('Controlle Interno - CSI'),
      ),
      body: content,
    );
  }
// Colors

  static Color primaryColor([ double opacity = 1 ]) => Color.fromRGBO(67, 73, 232, opacity);
  static Color secondaryColor([ double opacity = 1 ]) => Color.fromRGBO(67, 73, 232, opacity);
  static Color litghColor([ double opacity = 1 ]) => Color.fromRGBO(67, 73, 232, opacity);
  static Color darkColor([ double opacity = 1 ]) => Color.fromRGBO(67, 73, 232, opacity);
  //static Color primary([ double opacity = 1 ]) => Color.fromRGBO(67, 73, 22, opacity);

  static Color navColor([ double opacity = 1 ]) => Color.fromRGBO(9, 42, 66, opacity);
}