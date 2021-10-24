import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Timelinemodel{

  Timelinemodel({
  @required this.username,
  @required this.profileImageURL,
  @required this.address,
  @required this.caption,
  @required this.postsImageURl,
  @required this.likes,
  });

  String username = '';
  String profileImageURL = '';
  String caption = '';
  String postsImageURl = '';
  String address = '';
  int likes = 0;
}