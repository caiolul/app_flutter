import 'package:flutter/material.dart';
import 'package:Controlle_Interno/layout.dart';

class AboutPage extends StatelessWidget {

  static String tag = 'about-page';

  @override
  Widget build(BuildContext context) {
    return Layout.getContent(context, Column(
      children: <Widget>[
        Image.asset('assets/img/logo_fundo.jpeg'),
        Text(
        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet orci id ex scelerisque facilisis eget quis mauris. Fusce at feugiat odio, eget commodo nunc. Ut posuere molestie enim, eget sagittis lorem condimentum eu. Proin ut porta nisi. Nullam tempor sodales venenatis. Quisque in nulla eget odio facilisis tempor. Proin placerat ultricies fringilla. Etiam quis pellentesque purus, a consequat nisl. Ut ut sollicitudin elit. Duis dapibus tincidunt elit id viverra. Quisque tristique nec mauris nec mollis. Praesent vestibulum ullamcorper eros, a sodales diam venenatis dictum. In scelerisque viverra fringilla. Ut ornare sit amet risus nec elementum. Curabitur non dictum quam.
Maecenas rutrum nibh in libero suscipit pharetra. Aliquam quis laoreet leo. Nulla finibus dapibus ex, sit amet pharetra ex iaculis id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam dignissim ultricies augue at condimentum. Maecenas ac viverra justo. Vestibulum accumsan lorem at diam tempor dapibus. Donec vitae sem non ligula egestas mollis sed in mauris. Curabitur mollis quam ac enim ullamcorper sagittis. Mauris quis magna et felis eleifend rhoncus vitae sed arcu. Curabitur faucibus convallis finibus. Quisque porttitor dui sit amet dui mollis, in laoreet mi porttitor. Nam euismod purus varius felis congue, a egestas dui fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed facilisis dictum neque, non condimentum dolor commodo non. Sed auctor non tellus ut blandit.''',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 12 ),
        ),   
      ],
//       child: Text(
//         '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet orci id ex scelerisque facilisis eget quis mauris. Fusce at feugiat odio, eget commodo nunc. Ut posuere molestie enim, eget sagittis lorem condimentum eu. Proin ut porta nisi. Nullam tempor sodales venenatis. Quisque in nulla eget odio facilisis tempor. Proin placerat ultricies fringilla. Etiam quis pellentesque purus, a consequat nisl. Ut ut sollicitudin elit. Duis dapibus tincidunt elit id viverra. Quisque tristique nec mauris nec mollis. Praesent vestibulum ullamcorper eros, a sodales diam venenatis dictum. In scelerisque viverra fringilla. Ut ornare sit amet risus nec elementum. Curabitur non dictum quam.
// Maecenas rutrum nibh in libero suscipit pharetra. Aliquam quis laoreet leo. Nulla finibus dapibus ex, sit amet pharetra ex iaculis id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam dignissim ultricies augue at condimentum. Maecenas ac viverra justo. Vestibulum accumsan lorem at diam tempor dapibus. Donec vitae sem non ligula egestas mollis sed in mauris. Curabitur mollis quam ac enim ullamcorper sagittis. Mauris quis magna et felis eleifend rhoncus vitae sed arcu. Curabitur faucibus convallis finibus. Quisque porttitor dui sit amet dui mollis, in laoreet mi porttitor. Nam euismod purus varius felis congue, a egestas dui fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed facilisis dictum neque, non condimentum dolor commodo non. Sed auctor non tellus ut blandit.''',
//         textAlign: TextAlign.center,
//         style: TextStyle(fontSize: 12 ),
//         ),      
    ));
  }
}
