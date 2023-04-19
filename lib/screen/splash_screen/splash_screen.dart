import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/splash_screen/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

SplashController splashController = Get.put(SplashController());
    return Scaffold(

      backgroundColor: Color(0xff3879E8),
      body: Center(
        child: Image.asset(
          "assets/images/Property 1=Whitelogowhite 1.png",
          height: Get.height * 0.7,
          width: Get.width * 0.69,
        ),
      ),
    );
  }
}
