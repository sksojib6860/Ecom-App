import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_login/Constants.dart';
import 'package:flutter_test_login/screens/home_page.dart';
import 'package:flutter_test_login/screens/login_page.dart';
import 'package:flutter_test_login/screens/splash_screen.dart';

class cnnectioncheck extends StatefulWidget {
  const cnnectioncheck({Key? key}) : super(key: key);

  @override
  _cnnectioncheckState createState() => _cnnectioncheckState();
}

class _cnnectioncheckState extends State<cnnectioncheck> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, systemcheck) {
        if (systemcheck.hasError) {
          return Scaffold(
            body: Center(
              child: Text('error${systemcheck.error}'),
            ),
          );
        }
        if (systemcheck.connectionState == ConnectionState.done) {
          // stream builder login er jonno
          return StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, streamsystemcheck) {
              if (streamsystemcheck.hasError) {
                return Scaffold(
                  body: Center(
                    child: Text('error${streamsystemcheck.error}'),
                  ),
                );
              }

              if (streamsystemcheck.connectionState == ConnectionState.active) {
                Object? _user = streamsystemcheck.data;
                if (_user == null) {
                  return LoginPage();
                } else {
                  return HomePage();
                }
              }


              return splashscreen();
            },
          );
        }
        return Scaffold(
          body: Center(
            child: Text(
              'Connection hoyni',
              style: Constants.regularHeading,
            ),
          ),
        );
      },
    );
  }
}
