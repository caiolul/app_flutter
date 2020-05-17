import 'package:flutter/material.dart';
import 'package:Controlle_Interno/pages/home.dart';
import 'package:Controlle_Interno/pages/about.dart';
import 'package:Controlle_Interno/pages/prefeitura.dart';
import 'package:Controlle_Interno/pages/posto.dart';
import 'package:Controlle_Interno/pages/feedback.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //rotas
  final routes = <String, WidgetBuilder> {
      MyHomePage.tag: (context) => MyHomePage(),
      AboutPage.tag: (context) => AboutPage(),
      FeedbackPage.tag: (context) => FeedbackPage(),
      PrefeituraPage.tag: (context) => PrefeituraPage(),
      PostoPage.tag: (context) => PostoPage(),
    };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigoAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      routes: routes,
    );
  }
}
