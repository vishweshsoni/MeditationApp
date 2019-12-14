import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(

            children: <Widget>[
               SizedBox(height: MediaQuery.of(context).size.height/10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/15),
                          height: MediaQuery.of(context).size.height/20,
                          width: MediaQuery.of(context).size.width/11,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/iconfill.png')
                            )

                          ),
                        ),

                      Container(
                        margin: EdgeInsets.only(right: MediaQuery.of(context).size.width/15),
                        height: MediaQuery.of(context).size.height/20,
                        width: MediaQuery.of(context).size.width/11,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/setting.png')
                            )

                        ),
                      ),
                    ],
                ),
                Column(
                  children: <Widget>[
                    orientation==Orientation.portrait
                        ? Column(
                      children: <Widget>[
                        Container(
                         height: MediaQuery.of(context).size.height/ 7,
                          width: MediaQuery.of(context).size.height/ 7,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:AssetImage("images/avtar.png")
                              )
                          ),


                        ),
                        SizedBox(height:10.0),
                        Text("Natalia Lebediva",style: TextStyle(
                            fontSize: 25.0,
                          fontWeight: FontWeight.w500,

                        ),)
                      ],
                    ): Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height/ 4,
                          width: MediaQuery.of(context).size.height/ 4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:AssetImage("images/avtar.png")
                              )
                          ),
                        ),
                        SizedBox(height:5.0),
                        Text("Natalia Lebediva",style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,

                        ),)
                      ],
                    )

                  ],
                ),
              orientation==Orientation.portrait?
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        SizedBox(height: 20.0,),
                        Image(image: AssetImage('images/practice.png'),),
                        SizedBox(height: 20.0,),
                        Image(image: AssetImage('images/allmeditation.png'),),
                        SizedBox(height: 20.0,),
                        Image(image: AssetImage('images/stats.png'),),


                    ],
              ):Column(
                children: <Widget>[
                  SizedBox(height: 20.0,),
                  Image(image: AssetImage('images/practice.png'),),
                  SizedBox(height: 20.0,),
                  Image(image: AssetImage('images/allmeditation.png'),),
                  SizedBox(height: 20.0,),
                  Image(image: AssetImage('images/stats.png'),),
                ],
                 )
            ],

          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            onTap: (int val){
              if(val==0){
                  Navigator.of(context).pop();
              }
            },

            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('images/home1.png'),
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
                icon: Image.asset('images/gpblue.png'),
                title: Text('Notifications'),
              ),
            ])
    );
  }
}
