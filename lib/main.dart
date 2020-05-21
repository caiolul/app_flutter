// import 'package:Controlle_Interno/layout.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:Controlle_Interno/pages/home.dart';
// import 'package:Controlle_Interno/pages/about.dart';
// import 'package:Controlle_Interno/pages/prefeitura.dart';
// import 'package:Controlle_Interno/pages/posto.dart';
// import 'package:Controlle_Interno/pages/feedback.dart';


// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   //rotas
//   final routes = <String, WidgetBuilder> {
//       MyHomePage.tag: (context) => MyHomePage(),
//       AboutPage.tag: (context) => AboutPage(),
//       FeedbackPage.tag: (context) => FeedbackPage(),
//       PrefeituraPage.tag: (context) => PrefeituraPage(),
//       PostoPage.tag: (context) => PostoPage(),
//     };

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'CSI',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Layout.primaryColor(),// Alterando as cores
//         accentColor: Colors.indigoAccent,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//       routes: routes,
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Controlle_Interno/repository/user_repository.dart';

import 'package:Controlle_Interno/bloc/authentication_bloc.dart';
import 'package:Controlle_Interno/splash/splash.dart';
import 'package:Controlle_Interno/login/login_page.dart';
import 'package:Controlle_Interno/home/home.dart';
import 'package:Controlle_Interno/common/common.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print (transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
  }
}

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final userRepository = UserRepository();

  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(
          userRepository: userRepository
        )..add(AppStarted());
      },
      child: MyApp(userRepository: userRepository),
    )
  );
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  MyApp({Key key, @required this.userRepository}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationUnintialized) {
            return SplashPage();
          }
          if (state is AuthenticationAuthenticated) {
            return HomePage();
          }
          if (state is AuthenticationUnauthenticated) {
            return LoginPage(userRepository: userRepository,);
          }
          if (state is AuthenticationLoading) {
            return LoadingIndicator();
          }
        },
      ),
    );
  }
}