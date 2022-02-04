
import 'dart:html';

import 'package:flutter/material.dart';

class CustomBar extends StatefulWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  _CustomBarState createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30,
        bottom: 30,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Ecom App',style: TextStyle(fontSize: 20),),
          Container(child: Text('0',style: TextStyle(fontSize: 20),),)
        ],
      ),
    );
  }
}
