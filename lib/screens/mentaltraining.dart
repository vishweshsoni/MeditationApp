import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meditaion_app/screens/playarea.dart';
class MentalTraining extends StatefulWidget {
  @override
  _MentalTrainingState createState() => _MentalTrainingState();
}

class _MentalTrainingState extends State<MentalTraining> {
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return SafeArea(
          child: Scaffold(
             appBar: AppBar(
               backgroundColor: Colors.transparent,
               bottomOpacity: 0.0,
               elevation: 0.0,
               leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 19.0,),
               onPressed: (){
                  Navigator.of(context).pop();
               },),
               title: Container(
                 margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/5),
                   child: Text("Popular",style:TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 25.0),)),
             ),
              body: StreamBuilder(
                  stream: Firestore.instance.collection('post').snapshots(),
                  builder: (_,snapshot){
                          if(!snapshot.hasData){
                              return Center(
                                  child: Text("Loading..."),
                              );
                          }
                          else{
                              return ListView.builder(

                                  itemCount: snapshot.data.documents.length,
                                  itemBuilder: (_,index){
                                      DocumentSnapshot mydata=  snapshot.data.documents[index];
                                      return GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PlayArea()));
                                        },
                                        child: Container(

                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black,width: 0.1000)
                                          ),
                                            width: MediaQuery.of(context).size.width,
                                              height: 90.0,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                  children: <Widget>[

                                                      Padding(

                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Image(image: AssetImage('images/il1.png'),),
                                                      ),
                                                      Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Text("${mydata['title']}",style: TextStyle(
                                                                fontSize: 13.0,
                                                                fontWeight: FontWeight.w500
                                                              ),
                                                              ),
                                                            Text("${mydata['time']}",style: TextStyle(
                                                                fontWeight: FontWeight.w300
                                                            ),),
                                                          ],
                                                      ),
                                                      SizedBox(width: MediaQuery.of(context).size.width/4.5,),
                                                      IconButton(
                                                        icon: Icon(Icons.favorite_border),
                                                      )
                                                  ],
                                              ),
                                        ),
                                      );
                                  }
                              );
                          }
                  }
                ),
          ),
      );

  }
}

//                child: Column(
//                    children: <Widget>[
//                      orientation==Orientation.portrait?Column(
//                        children: <Widget>[
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Align(
//                                  alignment: Alignment.centerLeft,
//                                  child: IconButton(
//                                      icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 22.0,),
//                                      onPressed:(){
//                                        Navigator.of(context).pop();
//                                      })
//                              ),
//                              Container(
//                                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/4.5),
//                                  child: Text("Popular",style: TextStyle(
//                                      fontWeight: FontWeight.w500,
//                                      fontSize: 25.0
//                                  ),)),
//                            ],
//                          )
//                        ],
//                      ):
//                      Column(
//                        children: <Widget>[
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                              Align(
//                                  alignment: Alignment.centerLeft,
//                                  child: IconButton(
//                                      icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 22.0,),
//                                      onPressed: (){
//                                        Navigator.of(context).pop();
//                                      })
//                              ),
//                              Container(
//                                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/2.5),
//                                  child: Text("Popular",style: TextStyle(
//                                      fontWeight: FontWeight.w500,
//                                      fontSize: 25.0
//                                  ),)),
//                            ],
//                          ),
//
//                        ],
//                      ),