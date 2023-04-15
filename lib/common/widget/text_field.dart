import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/colorRes.dart';

Widget textFild(TextEditingController controller, String hintText, bool boxColor){
  return Container(
    height: Get.height * 0.06,
    width: Get.width,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: boxColor ? ColorRes.appColor : Colors.grey.withOpacity(0.4)),
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 10, bottom: 15),
        hintText: hintText,
        hintStyle: regular(fontSize: 14, color: Colors.grey),
      ),
    ),
  );
}