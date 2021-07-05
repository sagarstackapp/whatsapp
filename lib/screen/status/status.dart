import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsapp/common/colors.dart';
import 'package:whatsapp/common/image.dart';
import 'package:whatsapp/common/strings.dart';
import 'package:whatsapp/common/widget/floating_button.dart';
import 'package:whatsapp/common/widget/view_status.dart';
import 'package:whatsapp/model/statusmodel.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  get personalStatusView => Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                // CircleAvatar(
                //   radius: 40,
                //   backgroundImage: AssetImage(ImageResource.Avatar),
                // ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(ImageResource.Avatar),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 1.0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: ColorResource.ThemeLMalachite,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      color: ColorResource.ThemeWhite,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My status',
                  style: TextStyle(
                    color: ColorResource.ThemeBlack,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.visible,
                ),
                Text(
                  'Tap to add status update',
                  style: TextStyle(
                    color: ColorResource.ThemeBlack.withOpacity(0.7),
                    fontSize: 15.0,
                    height: 1.5,
                  ),
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
          ],
        ),
      );

  get recentUpdateView => Padding(
        padding: const EdgeInsets.only(right: 15),
        child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: statusList.length,
          itemBuilder: (context, index) {
            final statusLists = statusList[index];
            return Padding(
              padding: const EdgeInsets.only(top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ViewStatus()));
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(statusLists.image),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                statusLists.name,
                                style: TextStyle(
                                    color: ColorResource.ThemeBlack,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.visible,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                child: Text(
                                  statusLists.time,
                                  style: TextStyle(
                                    color: ColorResource.ThemeBlack.withOpacity(
                                        0.7),
                                  ),
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              Divider(thickness: 2),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );

  get viewedUpdateView => Padding(
        padding: const EdgeInsets.only(right: 15),
        child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: statusList.length,
          itemBuilder: (context, index) {
            final statusLists = statusList[index];
            return Padding(
              padding: const EdgeInsets.only(top: 5),
              child: InkWell(
                onTap: () {
                  print('object');
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(statusLists.image),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                statusLists.name,
                                style: TextStyle(
                                  color:
                                      ColorResource.ThemeBlack.withOpacity(0.8),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                child: Text(
                                  statusLists.time,
                                  style: TextStyle(
                                    color: ColorResource.ThemeBlack.withOpacity(
                                        0.7),
                                    fontSize: 15.0,
                                  ),
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              Divider(thickness: 2),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              personalStatusView,
              SizedBox(height: 5),
              updateLines(StringResource.RecentUpdate),
              recentUpdateView,
              updateLines(StringResource.ViewedUpdate),
              viewedUpdateView,
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingButton(
            icon: Icons.edit,
            buttonColor: Colors.white,
            iconColor: ColorResource.ThemeBlack.withOpacity(0.8),
          ),
          SizedBox(height: 20),
          FloatingButton(icon: Icons.camera_alt),
        ],
      ),
    );
  }

  updateLines(String updateLine) {
    return Container(
      color: Color(0xFFF2F2F2),
      width: double.infinity,
      height: 35,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8),
        child: Text(
          updateLine,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
