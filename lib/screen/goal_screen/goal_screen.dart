import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/logo.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/goal_screen/goal_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GoalController goalController =Get.put(GoalController());
    return Scaffold(
body:  SafeArea(
  child:   Column(
    children:  [
      SizedBox(height:  Get.height*0.037,),
      Align(alignment: Alignment.center,child: LogoImage(),),
      SizedBox(height:  Get.height*0.028,),
      Text(StringRes.oneLast,style: regular(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        color: ColorRes.fontGrey,
      ),),

    ],
  ),
),

    );
  }
}
