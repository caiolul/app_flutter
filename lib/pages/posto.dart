import 'package:flutter/material.dart';
import 'package:Controlle_Interno/layout.dart';


class PostoPage extends StatelessWidget {

  static String tag = 'posto-page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Text("Posto",
      style: TextStyle(fontSize: 74),),
    );
    return Layout.getContent(context, content);
  }
}

