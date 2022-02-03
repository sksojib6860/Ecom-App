import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test_login/screens/Connectioncheck.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyCrFe0ILauBP0Kglp4nsPqQxNm4HkjfCtw",
    databaseURL:
        "https://flutter-test-login-bf8ea-default-rtdb.firebaseio.com/",
    projectId: "flutter-test-login-bf8ea",
    messagingSenderId: "662067619368",
    appId: "1:662067619368:android:462e0ca877dc1c0e25771d",
  ));
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(length: 4,child: cnnectioncheck(),),
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        )
    );
  }
}
