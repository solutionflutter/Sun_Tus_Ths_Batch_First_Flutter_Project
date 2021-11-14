import 'package:flutter/cupertino.dart';

class MessangerModel {
  MessangerModel({
    @required this.username,
    @required this.lastmessage,
    @required this.userImageUrl,
  });

  String username;
  String lastmessage;
  String userImageUrl;
}
