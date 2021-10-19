import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:suntusthsbatchfirst/home_page.dart';
import 'package:suntusthsbatchfirst/models/Posts_Model.dart';

List<Posts> posts = [
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_1.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 123,
  ),
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_2.png",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 1200,
  ),
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_3.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 1400,
  ),
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_4.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 100,
  ),
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_5.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 90,
  ),
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_6.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 21,
  ),
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_7.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 34,
  ),
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_8.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 39,
  ),
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_9.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 49,
  ),
  Posts(username: "Saied Ahammed Foyez",
    userPhoto: "images/Profile_Image.jpg",
    caption: "Visit khulna district and other places",
    postImage: "images/Posts/Post_10.jpg",
    address: "Khulna-9100,Khulna,Bangladesh",
    likes: 23,
  ),
];

class PostsPage extends StatefulWidget {
  const PostsPage({Key key}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
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
          "Posts Page",
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
                  builder: (context)=>PostsPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding:EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 20,
          ),
          child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  height: MediaQuery.of(context).size.height/1.3,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(56, 67, 78, 1),
                        Color.fromRGBO(68, 78, 102, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        //User Name ,date And Photo Row

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('${posts[index].userPhoto}'),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/20,
                            ),
                            RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  text: "${posts[index].username}\n",
                                  style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color.fromRGBO(248, 248, 248,.6),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "${DateTime.now()}",
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: Color.fromRGBO(248, 248, 248,.6),
                                      ),
                                    )
                                  ]
                                ),
                            ),
                          ],
                        ),

                        //Address Row

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 18,
                              color: Color.fromRGBO(248, 248, 248,.6),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width/30,
                            ),
                            Text(
                                "${posts[index].address}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromRGBO(248, 248, 248,.6),
                                ),
                            ),
                          ],
                        ),

                        //Caption text

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Align(
                            alignment:Alignment.centerLeft,
                            child: Text(
                              "${posts[index].caption}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(245, 244, 243, 1),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),

                        //Caption image container

                        Container(
                          height: MediaQuery.of(context).size.height/2.6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('${posts[index].postImage}'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[
                            Container(
                              height: MediaQuery.of(context).size.height/10,
                              width: MediaQuery.of(context).size.width/3.4,

                              child: FlatButton.icon(
                                  onPressed: (){},
                                  icon: Icon(
                                    CupertinoIcons.heart,
                                    size: 15,
                                    color:Color.fromRGBO(245, 245, 245, 1),
                                  ),
                                  label: Text(
                                      "${posts[index].likes} likes",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(245, 245, 245, 1),
                                    ),
                                  )
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height/10,
                              width: MediaQuery.of(context).size.width/3.2,
                              child: FlatButton.icon(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.add_comment_outlined,
                                    size: 15,
                                    color:Color.fromRGBO(245, 245, 245, 1),
                                  ),
                                  label: Text(
                                    "Comments",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(245, 245, 245, 1),
                                    ),
                                  )
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height/10,
                              width: MediaQuery.of(context).size.width/3.5,
                              child: FlatButton.icon(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.share_outlined,
                                    size: 15,
                                    color:Color.fromRGBO(245, 245, 245, 1),
                                  ),
                                  label: Text(
                                    "Share",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(245, 245, 245, 1),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  )
                );
              },
          ),
        ),
      ),
    );
  }
}
