import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_test_login/body_page/home_tab.dart';
import 'package:flutter_test_login/body_page/product_tab.dart';
import 'package:flutter_test_login/body_page/search_tab.dart';
import 'package:flutter_test_login/screens/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;

  List<Widget> bodypage = [
    HomeTab(),
    ProductTab(),
    SearchTab(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodypage[page],
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        items: [
          Icon(Icons.home),
          Icon(Icons.production_quantity_limits),
          Icon(Icons.search),
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) =>
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }), (route) => false));
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
