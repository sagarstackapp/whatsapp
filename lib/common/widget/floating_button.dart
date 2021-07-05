import 'package:flutter/material.dart';
import 'package:whatsapp/common/colors.dart';

// ignore: must_be_immutable
class FloatingButton extends StatelessWidget {
  Color buttonColor;
  IconData icon;
  Color iconColor;

  FloatingButton({
    this.buttonColor = ColorResource.ThemeLMalachite,
    @required this.icon,
    this.iconColor = ColorResource.ThemeWhite,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      elevation: 10,
      highlightElevation: 10,
      shape: CircleBorder(),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
