import 'package:flutter/material.dart';

class DraweHeader extends StatefulWidget {
  const DraweHeader({Key? key}) : super(key: key);

  @override
  _DraweHeaderState createState() => _DraweHeaderState();
}

class _DraweHeaderState extends State<DraweHeader> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.greenAccent
            ),
            accountName: Text('SK'),
            accountEmail: Text('sk@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2021/09/13/08/18/blue-flower-6620619_960_720.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
          ),
          Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [Text('Bottom text')],
                ),
              ))
        ],
      ),

    );
  }
}
