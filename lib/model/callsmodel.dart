import 'package:flutter/material.dart';
import 'package:whatsapp/common/image.dart';

class CallsModel {
  String image;
  String name;
  String time;

  CallsModel({
    @required this.image,
    @required this.name,
    @required this.time,
  });
}

List callsList = [
  CallsModel(
    image: '${ImageResource.Avatar1}',
    name: 'Test 1',
    time: 'April 14, 9:27 PM',
  ),
  CallsModel(
    image: '${ImageResource.Avatar2}',
    name: 'Test 2',
    time: 'April 1, 11:46 PM',
  ),
  CallsModel(
    image: '${ImageResource.Avatar3}',
    name: 'Test 3',
    time: 'March 31, 11:39 PM',
  ),
  CallsModel(
    image: '${ImageResource.Avatar2}',
    name: 'Test 4',
    time: 'February 14, 5:22 PM',
  ),
  CallsModel(
    image: '${ImageResource.Avatar4}',
    name: 'Test 4',
    time: 'February 14, 5:22 PM',
  ),
  CallsModel(
    image: '${ImageResource.Avatar1}',
    name: 'Test 4',
    time: 'February 14, 5:22 PM',
  ),
  CallsModel(
    image: '${ImageResource.Avatar}',
    name: 'Test 4',
    time: 'February 14, 5:22 PM',
  ),
  CallsModel(
    image: '${ImageResource.Avatar3}',
    name: 'Test 4',
    time: 'February 14, 5:22 PM',
  ),
  CallsModel(
    image: '${ImageResource.Avatar2}',
    name: 'Test 4',
    time: 'February 14, 5:22 PM',
  ),
];
