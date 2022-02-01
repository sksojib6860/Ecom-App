import 'package:flutter/material.dart';
import 'package:flutter_test_login/screens/drawer.dart';
import 'package:flutter_test_login/utils/custom_color.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

AllColor allColor = AllColor();

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
          shadowColor: Colors.red,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          backgroundColor: Colors.cyan,
          title: const Text('App Bar'),
          bottom:
          TabBar(tabs: [
            Tab(icon: Icon(Icons.star,color: allColor.appColor,),),
            Tab(icon: Icon(Icons.icecream,color: allColor.appColor,),),
            Tab(icon: Icon(Icons.coffee,color: allColor.appColor,),),
            Tab(icon: Icon(Icons.add_shopping_cart_rounded,color: allColor.appColor,),),


          ]
          ),
        ),
        backgroundColor: Colors.grey,
        drawer: const DraweHeader(),
        body:

      SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top: 2, right: 10, left: 10),
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('New Product'),
                      Text('View All')
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text('1st Data'),
                            Text('2st Data'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10)),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('../images/bee.jpg'),fit: BoxFit.cover),
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('../images/bee.jpg'),fit: BoxFit.cover),
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
      )
    );
  }
}
