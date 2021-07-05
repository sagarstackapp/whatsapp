import 'package:flutter/material.dart';
import 'package:whatsapp/common/image.dart';
import 'package:whatsapp/screen/home/home.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  delay() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
      setState(() {});
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delay();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black45,
        body: Stack(
          children: [
            Align(
              alignment: Alignment(0, -0.5),
              child: Image.asset(
                ImageResource.WhatsappLogo,
                color: Colors.white.withOpacity(0.8),
                height: 80,
                width: 80,
              ),
            ),
            Align(
              alignment: Alignment(0,0.860),
              child: Text(
                'from'.toLowerCase(),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,0.940),
              child: Text(
                'facebook'.toUpperCase(),
                style: TextStyle(
                  color: Colors.blueGrey.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
