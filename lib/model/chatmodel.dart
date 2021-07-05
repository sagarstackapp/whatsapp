import 'package:flutter/material.dart';
import 'package:whatsapp/common/colors.dart';
import 'package:whatsapp/common/image.dart';

class MessageModel {
  String image;
  String name;
  Widget message;
  String date;
  int unRead;

  MessageModel({
    @required this.image,
    @required this.name,
    @required this.message,
    @required this.date,
    this.unRead = 0,
  });
}

List messageList = [
  MessageModel(
    image: '${ImageResource.Avatar1}',
    name: 'Alia',
    message: Text(
      'Test',
      style: TextStyle(
        color: ColorResource.ThemeBlack.withOpacity(0.7),
      ),
      overflow: TextOverflow.visible,
    ),
    date: '4:34 PM',
    unRead: 1,
  ),
  MessageModel(
    image: '${ImageResource.Avatar2}',
    name: 'Rossy',
    message: Text('Test message 2'),
    date: '12:12 PM',
    unRead: 5,
  ),
  MessageModel(
    image: '${ImageResource.Avatar3}',
    name: 'Lily',
    message: Row(
      children: [
        Icon(
          Icons.done_all_rounded,
          color: Colors.grey,
        ),
        Icon(
          Icons.mic_none_rounded,
          color: Colors.grey,
        ),
        Text('0:17'),
      ],
    ),
    date: '05:28 AM',
    unRead: 8,
  ),
  MessageModel(
    image: '${ImageResource.Avatar4}',
    name: 'Harry',
    message: Text('Test message 4'),
    date: '4/6/21',
  ),
  MessageModel(
    image: '${ImageResource.Avatar}',
    name: '+91 98547 12345',
    message: Row(
      children: [
        Icon(
          Icons.photo_album_rounded,
          color: Colors.grey,
        ),
        Text(
          'Photo',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    date: '4/6/21',
    unRead: 6,
  ),
  MessageModel(
    image: '${ImageResource.Avatar2}',
    name: 'Family Group',
    message: Row(
      children: [
        Text(
          'Alia : Good Afternoon',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ),
    date: '4/5/21',
  ),
];
