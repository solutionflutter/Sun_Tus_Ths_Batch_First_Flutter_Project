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
  Timelinemodel(username: "Abdur Rajjak", profileImageURL: "images/profile_images/user_1.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_1.jpg", likes: 234),
  Timelinemodel(username: "Shakib Al Hasan", profileImageURL: "images/profile_images/user_2.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_2.png", likes: 213),
  Timelinemodel(username: "Tawsif Mahbub", profileImageURL: "images/profile_images/user_3.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_3.jpg", likes: 456),
  Timelinemodel(username: "Mosharraf Karim", profileImageURL: "images/profile_images/user_4.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_4.jpg", likes: 678),
  Timelinemodel(username: "Chanchal Chowdhury", profileImageURL: "images/profile_images/user_5.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_5.jpg", likes: 786),
  Timelinemodel(username: "Afran Nisho", profileImageURL: "images/profile_images/user_6.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_6.jpg", likes: 5678),
  Timelinemodel(username: "Ziaul Faruq Apurba", profileImageURL: "images/profile_images/user_7.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_7.jpg", likes: 565),
  Timelinemodel(username: "Siam Ahmed", profileImageURL: "images/profile_images/user_8.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_8.jpg", likes: 6789),
  Timelinemodel(username: "Zakia Bari Mamo", profileImageURL: "images/profile_images/user_9.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_9.jpg", likes: 6754),
  Timelinemodel(username: "Mashrafe Mortaza", profileImageURL: "images/profile_images/user_10.jpg", address: "Khulna-9100,Khulna,Bangladesh", caption: "Visit khulna district and other places", postsImageURl: "images/Posts/Post_10.jpg", likes: 454),
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

            // Post container
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  itemCount: timelinemodels.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      height: MediaQuery.of(context).size.height/1.5,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(145, 234, 120, 1),
                            Color.fromRGBO(145, 234, 120, .9),
                            Color.fromRGBO(145, 234, 120, .8),
                            Color.fromRGBO(145, 234, 120, .7),
                            Color.fromRGBO(145, 234, 120, .6),
                            Color.fromRGBO(145, 234, 120, .5),
                            Color.fromRGBO(145, 234, 120, .4),
                            Color.fromRGBO(145, 234, 120, .3),
                            Color.fromRGBO(145, 234, 120, .2),
                            Color.fromRGBO(145, 234, 120, .1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [

                          //Header row

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage("${timelinemodels[index].profileImageURL}"),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: RichText(
                                        textAlign: TextAlign.justify,
                                        text: TextSpan(
                                          text: "${timelinemodels[index].username}\n",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromRGBO(0, 0, 0, .6),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "${DateTime.now()}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(0,0,0,.6),
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Address row
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 12),
                                      child: Text(
                                          "${timelinemodels[index].address}",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(0, 0, 0, .6),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //Caption Text

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height/15,
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "${timelinemodels[index].caption}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),

                            //Cpation image container

                            Container(
                              height: MediaQuery.of(context).size.height/4,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "${timelinemodels[index].postsImageURl}"
                                  ),
                                  fit: BoxFit.fill
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
