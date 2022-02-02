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

  Widget FistRow(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 160,
      width: 100,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('../images/cake.jpg'),fit: BoxFit.cover),
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(10)),
    );

  }


  Widget SecondRow(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 160,
      width: 100,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('../images/lily.jpg'),fit: BoxFit.cover),
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(10)),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
          shadowColor: Colors.red,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          backgroundColor: Colors.greenAccent,
          title: const Text('App Bar'),
          bottom:
          TabBar(tabs: [
            Tab(icon: Icon(Icons.star,color: allColor.appColor,),),
            Tab(icon: Icon(Icons.icecream,color: allColor.appColor,),),
            Tab(icon: Icon(Icons.coffee,color: allColor.appColor,),),
            Tab(icon: Icon(Icons.wine_bar,color: allColor.appColor,),),

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
                    image: DecorationImage(image: AssetImage('../images/girl.jpg'),fit: BoxFit.cover),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FistRow(),
                        FistRow(),
                        FistRow(),
                        FistRow(),
                        FistRow(),
                        FistRow(),
                      ],
                    ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SecondRow(),
                        SecondRow(),
                        SecondRow(),
                        SecondRow(),
                        SecondRow(),
                        SecondRow(),

                      ],
                    ),
                  ),
                ),


              ],
            ),

          ),
      )
    );
  }
}
