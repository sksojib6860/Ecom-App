import 'package:flutter/material.dart';
import 'package:flutter_test_login/Widget/custom_bar.dart';

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        CustomBar(),
        Center(child: Text('New Home Page'),)
      ],),
    );
  }
}
