import 'package:flutter/material.dart';
import 'package:Controlle_Interno/layout.dart';


class FeedbackPage extends StatelessWidget {

  static String tag = 'feedback-page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Text("FeedBack",
      style: TextStyle(fontSize: 74),),
    );
    return Layout.getContent(context, content);
  }
}

