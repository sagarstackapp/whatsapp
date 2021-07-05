import 'package:flutter/material.dart';
import 'package:whatsapp/common/colors.dart';
import 'package:whatsapp/common/widget/floating_button.dart';
import 'package:whatsapp/model/chatmodel.dart';


class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 15, bottom: 15),
        child: ListView.builder(
          itemCount: messageList.length,
          itemBuilder: (context, index) {
            final chatLists = messageList[index];
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(chatLists.image),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(),
                              _buildDate(chatLists),
                              _buildUnRead(chatLists),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
            // return Column(
            //   children: [
            //     Divider(height: 10),
            //     ListTile(
            //       leading: ConstrainedBox(
            //         constraints: BoxConstraints(
            //           maxWidth: 80,
            //           maxHeight: 80,
            //         ),
            //         child: Image.asset(chatLists.image, fit: BoxFit.fill),
            //       ),
            //       title: Text(
            //         chatLists.name,
            //         style: TextStyle(
            //           color: ColorResource.ThemeBlack,
            //           fontSize: 18.0,
            //           fontWeight: FontWeight.bold,
            //         ),
            //         overflow: TextOverflow.visible,
            //       ),
            //       subtitle: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 8.0),
            //         child: chatLists.message,
            //       ),
            //       trailing: _buildTrailing(chatLists),
            //     ),
            //   ],
            // );
          },
        ),
      ),
      floatingActionButton: FloatingButton(
        icon: Icons.message,
      ),
    );
  }

  _buildDate(chatLists) {
    if (chatLists.unRead == 0) {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Text(
              chatLists.name,
              style: TextStyle(
                color: ColorResource.ThemeBlack,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.visible,
            ),
          ),
          Spacer(),
          Text(
            chatLists.date,
            style: TextStyle(
              fontSize: 14,
              color: ColorResource.ThemeBlack.withOpacity(0.7),
            ),
            overflow: TextOverflow.visible,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Text(
              chatLists.name,
              style: TextStyle(
                color: ColorResource.ThemeBlack,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.visible,
            ),
          ),
          Spacer(),
          Text(
            chatLists.date,
            style: TextStyle(
              fontSize: 14,
              color: ColorResource.ThemeLMalachite,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.visible,
          ),
        ],
      );
    }
  }

  _buildUnRead(chatLists) {
    if (chatLists.unRead == 0) {
      return Row(
        children: [
          chatLists.message,
          Spacer(),
          Container(),
        ],
      );
    } else {
      return Row(
        children: [
          chatLists.message,
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: ColorResource.ThemeLMalachite,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                chatLists.unRead.toString(),
                style: TextStyle(
                  color: ColorResource.ThemeWhite,
                ),
                overflow: TextOverflow.visible,
              ),
            ),
          ),
        ],
      );
    }
  }
}
