import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchfirst/Follower_page.dart';
import 'package:suntusthsbatchfirst/Following_page.dart';
import 'package:suntusthsbatchfirst/Posts_page.dart';
import 'package:suntusthsbatchfirst/Splash_screen.dart';
import 'package:suntusthsbatchfirst/edit_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>SplashScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
          iconSize: 20,
        ),
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> EditPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 12,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Edit"),
                    Icon(Icons.create_outlined,size: 15,),
                  ]
                ),
              ),
            ),
          ),
        ],
        title: Text("Personal Info"),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // User name and profile image Container start
              Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    // Profile Image Container
                    Container(
                      height: MediaQuery.of(context).size.height/7,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("images/Profile_Image.jpg"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(52, 95, 97,1),
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),

                    // Address And Bio Container
                    Container(
                      width: MediaQuery.of(context).size.width/1.5,
                      height: MediaQuery.of(context).size.height/7,
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              text: "Saied Ahammed Foyez\n",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black45,
                              ),
                              children: [
                                TextSpan(
                                  text: "217/A/1,South Perirbagh,Mirpur-2,Dhaka-1216",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ]
                            ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //bio container

              Container(
                height: MediaQuery.of(context).size.height/3.3,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      //Bio text And create icon Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              "Bio",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color.fromRGBO(0, 0, 0, .5),
                              ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/35,
                          ),
                          Icon(
                            Icons.create_rounded,
                            size: 20,
                            color: Color.fromRGBO(0, 0, 0, .5),
                          ),
                        ],
                      ),

                      //Bio Container
                      Container(
                        height: MediaQuery.of(context).size.height/5,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Hi! I am Saied Ahammed Foyez. "
                              "I Already completed my BSc program in "
                              "Computer Science and Engineering form "
                              "AIUB. Now I am working on flutter "
                              "development project which is a "
                              "ICTD bangladesh project. I am staying "
                              "in khulna now.",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, .5),
                            wordSpacing: 3,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Edit Profile , Follow , Following

              Container(
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/15,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: FlatButton.icon(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>PostsPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.post_add,
                            size: 15,
                            color: Color.fromRGBO(0, 0, 0, .5),
                          ),
                          label: Text(
                              "Posts",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, .5),
                            ),
                          ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/15,
                      width: MediaQuery.of(context).size.width/3.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: FlatButton.icon(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>FollowerPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.follow_the_signs_outlined,
                            size: 15,
                            color: Color.fromRGBO(0, 0, 0, .5),
                          ),
                          label: Text(
                              "Follower",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromRGBO(0, 0, 0, .5)
                            ),
                          ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/15,
                      width: MediaQuery.of(context).size.width/3.2,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: FlatButton.icon(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=> FollowingPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 15,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          label: Text(
                            'Following',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 0, .5)
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
