import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Controlle_Interno/repository/user_repository.dart';

import 'package:Controlle_Interno/bloc/authentication_bloc.dart';
import 'package:Controlle_Interno/pages/login/bloc/login_bloc.dart';
import 'package:Controlle_Interno/pages/login/login_form.dart';
//import 'package:Controlle_Interno/widgets/side_menu.dart';


class LoginPage extends StatelessWidget {
  final UserRepository userRepository;
   static String tag = 'login-page';

  LoginPage({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login | Home Hub'),
      ),
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            userRepository: userRepository,
          );
        },
        child: LoginForm(),
      ),
    );
  }
}