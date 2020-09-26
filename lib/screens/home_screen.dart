import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget shops(String url){
    return Container(
      height: 130.0,
      width: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow:[ BoxShadow(color: Colors.black, blurRadius: 5.0) ],
        image: DecorationImage(
          image: AssetImage(
            "$url"
          ),
          fit: BoxFit.cover
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget image_slider_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('img/1.jpg'),
          AssetImage('img/2.jpg'),
          AssetImage('img/3.jpg'),
          AssetImage('img/4.jpg'),
          AssetImage('img/5.jpg'),
        ]
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(30.0),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
                    child: image_slider_carousel
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.white,
                        onPressed: () => {},
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.search),
                            iconSize: 30.0,
                            color: Colors.white,
                            onPressed: () => {}
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 30.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.lightBlue,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.call, color: Colors.white,size: 30),
                              Text("Call", style: TextStyle(color: Colors.white,fontSize: 24)),
                            ]
                          ),  
                        ),
                        RaisedButton(
                          color: Colors.lightBlue,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.navigation, color: Colors.white,size: 30),
                              Text("Navigation", style: TextStyle(color: Colors.white,fontSize: 24)),
                            ]
                          ),  
                        ),
                      ]
                    ),
                  )
                ),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("ASNA HOME DECORATIONS",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                            Text("BAHRAIN CO. W.L.L",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                          ]
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.facebookF, color: Colors.lightBlue,size: 30,),
                            SizedBox(width: 8),
                            Icon(FontAwesomeIcons.instagram, color: Colors.lightBlue,size: 30,),
                            SizedBox(width: 8),
                            Icon(FontAwesomeIcons.mailBulk, color: Colors.lightBlue,size: 30,),
                            SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Home Furnishing | 52 ",style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold ),),
                      SizedBox(height: 8,),
                      Text("Your inspiration for gorgeous decor design is found here.",style: TextStyle(fontSize: 18),)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("SIMILAR SHOPS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text("View All",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        shops("img/1.jpg"),
                        SizedBox(width: 15),
                        shops("img/2.jpg"),
                        SizedBox(width: 15),
                        shops("img/3.jpg"),
                        SizedBox(width: 15),
                        shops("img/4.jpg"),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ], 
        ),
      ),
    );
  }
}