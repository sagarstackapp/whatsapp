import 'package:flutter/material.dart';
import 'package:whatsapp/common/colors.dart';
import 'package:whatsapp/common/widget/floating_button.dart';
import 'package:whatsapp/model/callsmodel.dart';


class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callsList.length,
        itemBuilder: (context, index) {
          final callsLists = callsList[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(callsLists.image),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                callsLists.name,
                                style: TextStyle(
                                    color: ColorResource.ThemeBlack,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.visible,
                              ),
                              Spacer(),
                              Icon(
                                Icons.videocam_rounded,
                                color: ColorResource.ThemeDarkGreen.withOpacity(
                                    0.8),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 10),
                            child: Text(
                              callsLists.time,
                              style: TextStyle(
                                color:
                                    ColorResource.ThemeBlack.withOpacity(0.7),
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
              ),
            ],
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingButton(
            icon: Icons.missed_video_call_outlined,
            buttonColor: Colors.white,
            iconColor: ColorResource.ThemeBlack.withOpacity(0.8),
          ),
          SizedBox(height: 20),
          FloatingButton(icon: Icons.add_ic_call),
        ],
      ),
    );
  }
}
