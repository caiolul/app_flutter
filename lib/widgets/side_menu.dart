import 'package:flutter/material.dart';
import 'package:Controlle_Interno/pages/home.dart';
import 'package:Controlle_Interno/pages/about.dart';
import 'package:Controlle_Interno/pages/prefeitura.dart';
import 'package:Controlle_Interno/pages/posto.dart';
import 'package:Controlle_Interno/pages/feedback.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'CSI',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/img/logo.jpeg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Bem Vindo'),
            onTap: () => {Navigator.of(context).pushNamed(MyHomePage.tag)},
          ),
          ListTile(
            leading: Icon(Icons.local_gas_station),
            title: Text('Posto'),
            onTap: () => {Navigator.of(context).pushNamed(PostoPage.tag)},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Prefeitura'),
            onTap: () => {Navigator.of(context).pushNamed(PrefeituraPage.tag)},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pushNamed(FeedbackPage.tag)},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Sobre'),
            onTap: () => {Navigator.of(context).pushNamed(AboutPage.tag)},
          ),
        ],
      ),
    );
  }
}