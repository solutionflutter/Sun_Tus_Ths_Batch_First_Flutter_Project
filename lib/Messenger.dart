import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchfirst/home_page.dart';
import 'package:suntusthsbatchfirst/models/messenger_model.dart';

List<String> images = [
  "images/profile_images/user_1.jpg",
  "images/profile_images/user_2.jpg",
  "images/profile_images/user_3.jpg",
  "images/profile_images/user_4.jpg",
  "images/profile_images/user_5.jpg",
  "images/profile_images/user_6.jpg",
  "images/profile_images/user_7.jpg",
  "images/profile_images/user_8.jpg",
  "images/profile_images/user_9.jpg",
  "images/profile_images/user_10.jpg"
];

List<MessangerModel> messangerModels = [
  MessangerModel(
      username: "Abdur Rajjak",
      lastmessage: "Hi",
      userImageUrl: "images/profile_images/user_1.jpg"),
  MessangerModel(
      username: "Shakib Al Hasan",
      lastmessage: "How are you??",
      userImageUrl: "images/profile_images/user_2.jpg"),
  MessangerModel(
      username: "Tawsif Mahbub",
      lastmessage: "How do you do??",
      userImageUrl: "images/profile_images/user_3.jpg"),
  MessangerModel(
      username: "Mosharraf Karim",
      lastmessage: "Let's go for a long drive",
      userImageUrl: "images/profile_images/user_4.jpg"),
  MessangerModel(
      username: "Chanchal Chowdhury",
      lastmessage: "Valo Asen Vai",
      userImageUrl: "images/profile_images/user_5.jpg"),
  MessangerModel(
      username: "Afran Nisho",
      lastmessage: "Amar Natok Dakhen Vai??",
      userImageUrl: "images/profile_images/user_6.jpg"),
  MessangerModel(
      username: "Ziaul Faruq Apurba",
      lastmessage: "Tumi ki koro??",
      userImageUrl: "images/profile_images/user_7.jpg"),
  MessangerModel(
      username: "Siam Ahmed",
      lastmessage: "Amar shate tumi dakha korbe??",
      userImageUrl: "images/profile_images/user_8.jpg"),
  MessangerModel(
      username: "Zakia Bari Mamo",
      lastmessage: "Hi There",
      userImageUrl: "images/profile_images/user_9.jpg"),
  MessangerModel(
      username: "Mashrafe Mortaza",
      lastmessage: "Tomi ki balo aso",
      userImageUrl: "images/profile_images/user_10.jpg"),
];

class MessengerPage extends StatefulWidget {
  const MessengerPage({Key key}) : super(key: key);

  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 250, 251, 1),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(86, 86, 86, 1),
          ),
          iconSize: 20,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
        title: Text(
          "Messenger Page",
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessengerPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          // Header Text slivertoboxAdapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: MediaQuery.of(context).size.height / 25,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Friends",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 0, 0, .6),
                ),
              ),
            ),
          ),

          //friend list view builder slivertoboxadapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("${images[index]}"),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(10, 255, 10, 1),
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          //Message text slivertoboxadapter

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: MediaQuery.of(context).size.height / 25,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Messages",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                                "${messangerModels[index].userImageUrl}"),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height / 10,
                            left: MediaQuery.of(context).size.height / 11,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Color.fromRGBO(10, 255, 10, 1),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width / 1.5,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text: "${messangerModels[index].username}\n",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            children: [
                              TextSpan(
                                text: "${messangerModels[index].lastmessage}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(21, 21, 21, .6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: messangerModels.length,
            ),
          ),
        ],
      ),
    );
  }
}
