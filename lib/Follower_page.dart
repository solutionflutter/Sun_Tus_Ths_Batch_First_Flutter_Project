import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchfirst/home_page.dart';
import 'package:suntusthsbatchfirst/models/follower_modle.dart';

List<Follower> followers =[
  Follower(username: "Kazi Afroz",friends: 345,image: "images/Posts/Post_1.jpg"),
  Follower(username: "Homiun Kabir",friends: 456,image: "images/Posts/Post_2.png"),
  Follower(username: "Murshadul Haq",friends: 1098,image: "images/Posts/Post_3.jpg"),
  Follower(username: "Abir Hassain",friends: 456,image: "images/Posts/Post_4.jpg"),
  Follower(username: "Murshadul Hossain Babla",friends: 454,image: "images/Posts/Post_5.jpg"),
  Follower(username: "Kabir Ali",friends: 3232,image: "images/Posts/Post_6.jpg"),
  Follower(username: "Ali Ahammed Jobaier",friends: 67,image: "images/Posts/Post_7.jpg"),
  Follower(username: "Ali Hassan Mashror",friends: 54,image: "images/Posts/Post_8.jpg"),
  Follower(username: "Masrafie bin Mortaza",friends: 67,image: "images/Posts/Post_9.jpg"),
  Follower(username: "Medhi Hasan",friends: 454,image: "images/Posts/Post_10.jpg"),
];

class FollowerPage extends StatefulWidget {
  const FollowerPage({Key key}) : super(key: key);

  @override
  _FollowerPageState createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> {
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
          "Follower Page",
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
                  builder: (context)=>FollowerPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15),
              itemCount: followers.length,
              itemBuilder: (BuildContext context,int index){
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  height: MediaQuery.of(context).size.height/6,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("${followers[index].image}"),
                      ),
                      Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "${followers[index].username}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Color.fromRGBO(21, 34, 45, .5),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                      "Friends : ${followers[index].friends}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(86, 86, 90, 1),
                                    ),
                                    textAlign: TextAlign.start,
                                  )
                                ],
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
