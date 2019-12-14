import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:meditaion_app/screens/profile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation==Orientation.portrait? Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Background.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(top: 30.0),
                          height: MediaQuery.of(context).size.height / 3.9,
                          width: MediaQuery.of(context).size.width / 6.2,
                          child: Image(
                            image: AssetImage('images/nat1.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 20,
                            left: 10.0),
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "DAY 7",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 10.0),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Love And Accept",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25.0),
                                ),
                                Text(
                                  "Yourself",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25.0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 5.8,
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: Image(
                            image: AssetImage('images/nature.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 100.0, right: 10.0),
                    height: MediaQuery.of(context).size.height / 3.8,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/girl.png'),
                      fit: BoxFit.fill,
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/90.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: MediaQuery.of(context).size.width/50.0,),
                Text("Popular",textAlign:TextAlign.left,style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0
                ),),
                SizedBox(width: MediaQuery.of(context).size.width/1.8,),
                GestureDetector(
                  onTap: ()=>{

                  },
                  child: Text("See All",textAlign:TextAlign.right,style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.blue
                  ),),
                ),

              ],
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 5.0),
              child: Row(

                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.height/60,),
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    height: 150.0,
                    width: 250.0,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(10.0),
                          topLeft:Radius.circular(10.0),
                          bottomRight:Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/bg2.png'),
                            fit: BoxFit.fill
                        )

                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0,),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Anxiety",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:10.0),
                              child: Text(
                                "Turn down the streets",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 15.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:20.0),
                              child: Text(
                                "7 Steps | 5-11 min",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 13.0),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/tree.png'),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    height: 150.0,
                    width: 250.0,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(10.0),
                          topLeft:Radius.circular(10.0),
                          bottomRight:Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/bg2.png'),
                            fit: BoxFit.fill
                        )

                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0,),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Anxiety",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:10.0),
                              child: Text(
                                "Turn down the streets",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 15.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:20.0),
                              child: Text(
                                "7 Steps | 5-11 min",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 13.0),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/tree.png'),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    height: 150.0,
                    width: 250.0,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(10.0),
                          topLeft:Radius.circular(10.0),
                          bottomRight:Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/bg2.png'),
                            fit: BoxFit.fill
                        )

                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0,),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Anxiety",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:10.0),
                              child: Text(
                                "Turn down the streets",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 15.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:20.0),
                              child: Text(
                                "7 Steps | 5-11 min",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 13.0),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/tree.png'),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    height: 150.0,
                    width: 250.0,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(10.0),
                          topLeft:Radius.circular(10.0),
                          bottomRight:Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/bg2.png'),
                            fit: BoxFit.fill
                        )

                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0,),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Anxiety",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:10.0),
                              child: Text(
                                "Turn down the streets",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 15.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:20.0),
                              child: Text(
                                "7 Steps | 5-11 min",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 13.0),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/tree.png'),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                ],

              ),
              scrollDirection: Axis.horizontal,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/90.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: MediaQuery.of(context).size.width/50.0,),
                Text("News",textAlign:TextAlign.left,style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0
                ),),
                SizedBox(width: MediaQuery.of(context).size.width/1.6,),
                GestureDetector(
                  onTap: ()=>{

                  },
                  child: Text("See All",textAlign:TextAlign.right,style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.blue
                  ),),
                ),

              ],
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 5.0),
              child: Row(

                children: <Widget>[
                  SizedBox(width: 15.0,),
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    height: 150.0,
                    width: 250.0,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(10.0),
                          topLeft:Radius.circular(10.0),
                          bottomRight:Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        color: Colors.deepOrangeAccent.shade100,

                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0,),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Anxiety",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:10.0),
                              child: Text(
                                "Turn down the streets",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 15.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:20.0),
                              child: Text(
                                "7 Steps | 5-11 min",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 13.0),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/tree.png'),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    height: 150.0,
                    width: 250.0,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(10.0),
                          topLeft:Radius.circular(10.0),
                          bottomRight:Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/bg2.png'),
                            fit: BoxFit.fill
                        )

                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0,),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Anxiety",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:10.0),
                              child: Text(
                                "Turn down the streets",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 15.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:20.0),
                              child: Text(
                                "7 Steps | 5-11 min",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 13.0),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/tree.png'),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    height: 150.0,
                    width: 250.0,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(10.0),
                          topLeft:Radius.circular(10.0),
                          bottomRight:Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/bg2.png'),
                            fit: BoxFit.fill
                        )

                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0,),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Anxiety",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:10.0),
                              child: Text(
                                "Turn down the streets",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 15.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:20.0),
                              child: Text(
                                "7 Steps | 5-11 min",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 13.0),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/tree.png'),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    height: 150.0,
                    width: 250.0,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(10.0),
                          topLeft:Radius.circular(10.0),
                          bottomRight:Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/bg2.png'),
                            fit: BoxFit.fill
                        )

                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0,),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Anxiety",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:10.0),
                              child: Text(
                                "Turn down the streets",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 15.0),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,top:20.0),
                              child: Text(
                                "7 Steps | 5-11 min",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 13.0),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/tree.png'),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                ],

              ),
              scrollDirection: Axis.horizontal,
            ),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            onTap: (int val){
              if(val==3){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProfileScreen()));

              }



            },

            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('images/home.png'),
                  title: Text('Personal')),
              BottomNavigationBarItem(
                icon: Image.asset('images/book.png'),
                title: Text('Notifications'),
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/keypad.png'),
                title: Text('Notifications'),
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/group.png'),
                title: Text('Notifications'),
              ),
            ])
    ):landScapeView();
  }

  Widget landScapeView(){
      return Scaffold(
        body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                         height: MediaQuery.of(context).size.height/1.5,
                         width: MediaQuery.of(context).size.width/1,
//                            color: Colors.white54,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Background.png'),
                                fit: BoxFit.fill,

                              )
                          ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3.6, right: MediaQuery.of(context).size.width/8.5),
                          height: MediaQuery.of(context).size.height/2.1,
                          width: MediaQuery.of(context).size.width/3.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/girl.png')
                              )
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/4.4),
                          height: MediaQuery.of(context).size.height/1.8,
                          width: MediaQuery.of(context).size.width/6.1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/nature.png'),
                              fit: BoxFit.fill

                            )
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/5.0,top: 10.0),
                        height: MediaQuery.of(context).size.height/2.4,
                        width: MediaQuery.of(context).size.width/2.1,
                        child: Row(
                            children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                          Text("DAY7",

                                            style: TextStyle(
                                                 color: Colors.white60, fontSize: 15.0
                                            ),
                                          ),
                                        Text("Love and Accept",

                                          style: TextStyle(
                                              color: Colors.white, fontSize: 30.0
                                          ),
                                        ),
                                        Text("Yourself",

                                          style: TextStyle(
                                              color: Colors.white, fontSize: 30.0
                                          ),
                                        ),


                                      ],
                                  )
                            ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/12.0),
                            height: MediaQuery.of(context).size.height/1.7,
                            width:  MediaQuery.of(context).size.width/7.9,

                            decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/nat1.png'),
                                      fit: BoxFit.fill
                                  )
                            ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                       SizedBox(width: MediaQuery.of(context).size.width/30.0,),
                        Text("Popular",textAlign:TextAlign.left,style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25.0
                        ),),
                      SizedBox(width: MediaQuery.of(context).size.width/1.4,),
                      Text("See All",textAlign:TextAlign.right,style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue
                      ),),

                    ],
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 15.0,),
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 150.0,
                          width: 250.0,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.only(
                                topRight:Radius.circular(10.0),
                                topLeft:Radius.circular(10.0),
                                bottomRight:Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('images/bg2.png'),
                                  fit: BoxFit.fill
                              )

                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10.0,),

                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Anxiety",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:10.0),
                                    child: Text(
                                      "Turn down the streets",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:20.0),
                                    child: Text(
                                      "7 Steps | 5-11 min",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 13.0),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 100.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/tree.png'),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 150.0,
                          width: 250.0,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.only(
                                topRight:Radius.circular(10.0),
                                topLeft:Radius.circular(10.0),
                                bottomRight:Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('images/bg2.png'),
                                  fit: BoxFit.fill
                              )

                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10.0,),

                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Anxiety",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:10.0),
                                    child: Text(
                                      "Turn down the streets",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:20.0),
                                    child: Text(
                                      "7 Steps | 5-11 min",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 13.0),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 100.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/tree.png'),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 150.0,
                          width: 250.0,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.only(
                                topRight:Radius.circular(10.0),
                                topLeft:Radius.circular(10.0),
                                bottomRight:Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('images/bg2.png'),
                                  fit: BoxFit.fill
                              )

                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10.0,),

                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Anxiety",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:10.0),
                                    child: Text(
                                      "Turn down the streets",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:20.0),
                                    child: Text(
                                      "7 Steps | 5-11 min",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 13.0),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 100.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/tree.png'),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 150.0,
                          width: 250.0,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.only(
                                topRight:Radius.circular(10.0),
                                topLeft:Radius.circular(10.0),
                                bottomRight:Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('images/bg2.png'),
                                  fit: BoxFit.fill
                              )

                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10.0,),

                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Anxiety",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:10.0),
                                    child: Text(
                                      "Turn down the streets",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:20.0),
                                    child: Text(
                                      "7 Steps | 5-11 min",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 13.0),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 100.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/tree.png'),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],

                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/12.0,),
                  Row(
                    children: <Widget>[
                      SizedBox(width: MediaQuery.of(context).size.width/30.0,),
                      Text("Popular",textAlign:TextAlign.left,style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25.0
                      ),),
                      SizedBox(width: MediaQuery.of(context).size.width/1.4,),
                      Text("See All",textAlign:TextAlign.right,style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue
                      ),),

                    ],
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(

                      children: <Widget>[
                        SizedBox(width: 15.0,),
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 150.0,
                          width: 250.0,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.only(
                                topRight:Radius.circular(10.0),
                                topLeft:Radius.circular(10.0),
                                bottomRight:Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('images/bg2.png'),
                                  fit: BoxFit.fill
                              )

                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10.0,),

                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Anxiety",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:10.0),
                                    child: Text(
                                      "Turn down the streets",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:20.0),
                                    child: Text(
                                      "7 Steps | 5-11 min",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 13.0),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 100.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/tree.png'),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 150.0,
                          width: 250.0,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.only(
                                topRight:Radius.circular(10.0),
                                topLeft:Radius.circular(10.0),
                                bottomRight:Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                            color: Colors.deepOrangeAccent.shade100,

                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10.0,),

                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Anxiety",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:10.0),
                                    child: Text(
                                      "Turn down the streets",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:20.0),
                                    child: Text(
                                      "7 Steps | 5-11 min",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 13.0),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 100.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/tree.png'),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 150.0,
                          width: 250.0,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.only(
                                topRight:Radius.circular(10.0),
                                topLeft:Radius.circular(10.0),
                                bottomRight:Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('images/bg2.png'),
                                  fit: BoxFit.fill
                              )

                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10.0,),

                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Anxiety",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:10.0),
                                    child: Text(
                                      "Turn down the streets",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:20.0),
                                    child: Text(
                                      "7 Steps | 5-11 min",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 13.0),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 100.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/tree.png'),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          height: 150.0,
                          width: 250.0,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.only(
                                topRight:Radius.circular(10.0),
                                topLeft:Radius.circular(10.0),
                                bottomRight:Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              color: Colors.deepOrangeAccent.shade100,

                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10.0,),

                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Anxiety",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:10.0),
                                    child: Text(
                                      "Turn down the streets",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0,top:20.0),
                                    child: Text(
                                      "7 Steps | 5-11 min",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 13.0),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 100.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('images/tree.png'),
                                      )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],

                    ),
                    scrollDirection: Axis.horizontal,
                  )
                ],
              ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int value){
            if(value==3){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProfileScreen()));

            }
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('images/home.png'),
                title: Text('Personal')),
            BottomNavigationBarItem(
              icon: Image.asset('images/book.png'),
              title: Text('Notifications'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/keypad.png'),
              title: Text('Notifications'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/group.png'),
              title: Text('Notifications'),
            ),
          ],
        ),
      );
  }
}
