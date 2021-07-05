import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/common/colors.dart';
import 'package:whatsapp/common/strings.dart';
import 'package:whatsapp/screen/calls/calls.dart';
import 'package:whatsapp/screen/chats/chats.dart';
import 'package:whatsapp/screen/status/status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.ThemeDarkGreen,
        title: Text(
          '${StringResource.WhatsApp}',
          style: TextStyle(
            color: ColorResource.ThemeDesert,
            fontSize: 25,
            height: 0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
            color: ColorResource.ThemeDesert,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: PopupMenuButton(
              initialValue: 2,
              child: Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
              ),
              color: ColorResource.ThemeBlack,
              itemBuilder: (context) => [
                PopupMenuItem(child: popUpItem(StringResource.PopUpMenu1)),
                PopupMenuItem(child: popUpItem(StringResource.PopUpMenu2)),
                PopupMenuItem(child: popUpItem(StringResource.PopUpMenu3)),
                PopupMenuItem(child: popUpItem(StringResource.PopUpMenu4)),
                PopupMenuItem(child: popUpItem(StringResource.PopUpMenu5)),
                PopupMenuItem(child: popUpItem(StringResource.PopUpMenu6)),
              ],
            ),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(child: Icon(Icons.camera_enhance_rounded)),
            Tab(child: Text(StringResource.Chat.toUpperCase())),
            Tab(child: Text(StringResource.Status.toUpperCase())),
            Tab(child: Text(StringResource.Calls.toUpperCase())),
          ],
          indicatorColor: ColorResource.ThemeDesert,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Icon(Icons.camera_enhance_rounded),
          Chats(),
          Status(),
          Calls(),
          // ViewStatus(),
        ],
      ),
    );
  }

  popUpItem(String text) {
    return Text(
      text,
      style: TextStyle(color: ColorResource.ThemeWhite),
    );
  }
}
