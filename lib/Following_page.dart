import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchfirst/home_page.dart';

import 'models/following_modle.dart';

List<Following> following = [
  Following(image: "images/Profile_Icon.jpg",name: "Sakib Al Hasan",date: "${DateTime.now()}"),
  Following(image: "images/Femail_Profile_Icon.jpg",name: "Tinjin Tesha",date: "${DateTime.now()}",),
  Following(image: "images/Femail_Profile_Icon.jpg",name: "Joya Ahsan",date: "${DateTime.now()}",),
  Following(image: "images/Femail_Profile_Icon.jpg",name: "Mehajabin chowdhury",date: "${DateTime.now()}",),
  Following(image: "images/Femail_Profile_Icon.jpg",name: "Keya Payal",date: "${DateTime.now()}",),
  Following(image: "images/Femail_Profile_Icon.jpg",name: "Tisha",date: "${DateTime.now()}",),
  Following(image: "images/Profile_Icon.jpg",name: "Musharraf karim",date: "${DateTime.now()}"),
  Following(image: "images/Profile_Icon.jpg",name: "Chanchoal Chowdhury",date: "${DateTime.now()}"),
  Following(image: "images/Profile_Icon.jpg",name: "Mahammudhullah riyad",date: "${DateTime.now()}"),
  Following(image: "images/Profile_Icon.jpg",name: "Musfiqur Rahim",date: "${DateTime.now()}"),
];


class FollowingPage extends StatefulWidget {
  const FollowingPage({Key key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 250, 251, 1),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(86,86,86,1),
          ),
          iconSize: 20,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context)=>HomePage(),
              ),
            );
          },
        ),
        title: Text(
            "Following Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(91, 91, 92, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(100, 101, 103, 1),
            ),
            iconSize: 20,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>FollowingPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: following.length,
              itemBuilder: (BuildContext context,int index){
                return Container(
                  height: MediaQuery.of(context).size.height/7.5,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                       CircleAvatar(
                         backgroundImage: AssetImage("${following[index].image}"),
                         radius: 40,
                       ),
                       Expanded(
                         child: Container(
                           height: MediaQuery.of(context).size.height/8.5,
                           width: MediaQuery.of(context).size.width,
                           margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                           child: RichText(
                             textAlign: TextAlign.start,
                             text: TextSpan(
                               text: "${following[index].name}\n",
                               style: TextStyle(
                                 fontWeight: FontWeight.w700,
                                 fontSize: 20,
                                 color: Color.fromRGBO(21,21, 21, 1),
                               ),
                               children: [
                                 TextSpan(
                                   text: "${following[index].date}",
                                   style: TextStyle(
                                     fontSize: 15,
                                     fontWeight: FontWeight.w500,
                                     color: Color.fromRGBO(79, 79, 79, 1)
                                   ),
                                 )
                               ]
                             ),
                           ),
                         ),
                       ),
                    ],
                  ),
                );
              }
          ),
        ),
      )
    );
  }
}
