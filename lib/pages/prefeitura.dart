import 'package:flutter/material.dart';
import 'package:Controlle_Interno/layout.dart';


class PrefeituraPage extends StatelessWidget {

  static String tag = 'prefeitura-page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Text("Prefeitura"),
    );
    return Layout.getContent(context, content);
  }
}

