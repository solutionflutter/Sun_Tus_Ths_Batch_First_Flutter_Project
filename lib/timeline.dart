import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchfirst/Splash_screen.dart';
import 'package:suntusthsbatchfirst/home_page.dart';
import 'package:suntusthsbatchfirst/models/timelinemodel.dart';

List<String> images = [
  "images/Posts/Post_1.jpg",
  "images/Posts/Post_2.png",
  "images/Posts/Post_3.jpg",
  "images/Posts/Post_4.jpg",
  "images/Posts/Post_5.jpg",
  "images/Posts/Post_6.jpg",
  "images/Posts/Post_7.jpg",
  "images/Posts/Post_8.jpg",
  "images/Posts/Post_9.jpg",
  "images/Posts/Post_10.jpg",
];

List<Timelinemodel> timelinemodels = [
  Timelinemodel(username: "Abdur Rajjak", profileImageURL: "images/profile_images/user_1.jpg", address: null, caption: null, postsImageURl: null, likes: null),
  Timelinemodel(username: "Shakib Al Hasan", profileImageURL: "images/profile_images/user_2.jpg", address: null, caption: null, postsImageURl: null, likes: null),
  Timelinemodel(username: "Tawsif Mahbub", profileImageURL: "images/profile_images/user_3.jpg", address: null, caption: null, postsImageURl: null, likes: null),
  Timelinemodel(username: "Mosharraf Karim", profileImageURL: "images/profile_images/user_4.jpg", address: null, caption: null, postsImageURl: null, likes: null),
  Timelinemodel(username: "Chanchal Chowdhury", profileImageURL: "images/profile_images/user_5.jpg", address: null, caption: null, postsImageURl: null, likes: null),
  Timelinemodel(username: "Afran Nisho", profileImageURL: "images/profile_images/user_6.jpg", address: null, caption: null, postsImageURl: null, likes: null),
  Timelinemodel(username: "Ziaul Faruq Apurba", profileImageURL: "images/profile_images/user_7.jpg", address: null, caption: null, postsImageURl: null, likes: null),
  Timelinemodel(username: "Siam Ahmed", profileImageURL: "images/profile_images/user_8.jpg", address: null, caption: null, postsImageURl: null, likes: null),
  Timelinemodel(username: "Zakia Bari Mamo", profileImageURL: "images/profile_images/user_9.jpg", address: null, caption: null, postsImageURl: null, likes: null),
  Timelinemodel(username: "Mashrafe Mortaza", profileImageURL: "images/profile_images/user_10.jpg", address: null, caption: null, postsImageURl: null, likes: null),
];



class TimeLinePage extends StatefulWidget {
  const TimeLinePage({Key key}) : super(key: key);

  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(24, 24, 45, .6),
          ),
          iconSize: 25,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>SplashScreen(),
              ),
            );
          },
        ),
        title: Text(
            "Timeline",
           style: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.w700,
             color: Color.fromRGBO(24, 24, 45, .6),
           ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.person_circle_fill,
              color: Color.fromRGBO(24, 24, 45, .6),
            ),
            iconSize: 25,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>HomePage(),
                ),
              );
            },
          ),
        ],
        backgroundColor: Color.fromRGBO(245, 245, 245, .6),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20,),
            //top list view builder

            Container(
                height: MediaQuery.of(context).size.height/3.5,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    itemCount: images.length,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width/3.5,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage("${images[index]}"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      );
                    }
                ),
            ),

            SizedBox(height: 20,),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                    'All Posts',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 27,
                    color: Color.fromRGBO(35, 35, 35, .8),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
