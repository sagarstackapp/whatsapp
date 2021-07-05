import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:whatsapp/common/colors.dart';
import 'package:whatsapp/common/image.dart';
import 'package:whatsapp/screen/home/home.dart';

class ViewStatus extends StatefulWidget {
  @override
  _ViewStatusState createState() => _ViewStatusState();
}

class _ViewStatusState extends State<ViewStatus> {
  final storyController = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: 'Hello, This is first',
            backgroundColor: ColorResource.ThemeLMalachite,
          ),
          StoryItem.inlineProviderImage(
            AssetImage(ImageResource.WhatsappLogo),
          ),
        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
        inline: true,
        controller: storyController,
      ),
    );
  }
}
