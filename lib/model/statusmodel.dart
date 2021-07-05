import 'package:flutter/material.dart';
import 'package:whatsapp/common/image.dart';

class StatusModel {
  String image;
  String name;
  String time;
  // GestureTapCallback onTaps;

  StatusModel({
    @required this.image,
    @required this.name,
    @required this.time,
    // this.onTaps,
  });
}

List statusList = [
  StatusModel(
    image: '${ImageResource.Avatar1}',
    name: 'Name 1',
    time: 'Just now',
  ),
  StatusModel(
    image: '${ImageResource.Avatar2}',
    name: 'Name 2',
    time: '5 minutes ago'.toLowerCase(),
  ),
  StatusModel(
    image: '${ImageResource.Avatar3}',
    name: 'Name 3',
    time: 'Today, 10:47 AM',
  ),
  StatusModel(
    image: '${ImageResource.Avatar4}',
    name: 'Name 4',
    time: 'Yesterday, 6:65 PM',
  ),
  StatusModel(
    image: '${ImageResource.Avatar1}',
    name: 'Name 4',
    time: 'Yesterday, 6:65 PM',
  ),
  StatusModel(
    image: '${ImageResource.Avatar2}',
    name: 'Name 4',
    time: 'Yesterday, 6:65 PM',
  ),
];