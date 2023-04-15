import 'package:flutter/material.dart';
import 'package:yitaku/utils/colorRes.dart';

TextStyle regular(
    {Color? color,
      double? fontSize,
      double? letterSpacing,
      FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.w400,
    fontSize: fontSize ?? 14,
    //fontFamily: FontRes.poppinsRegular,
    letterSpacing: letterSpacing ?? 0,
  );
}

TextStyle medium(
    {Color? color,
      double? fontSize,
      double? letterSpacing,
      FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontSize: fontSize ?? 14,
    //fontFamily: FontRes.poppinsMedium,
    letterSpacing: letterSpacing ?? 0,
  );
}

TextStyle semiBold(
    {Color? color,
      double? fontSize,
      double? letterSpacing,
      FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.w600,
    fontSize: fontSize ?? 14,
    //fontFamily: FontRes.poppinsSemiBold,
    letterSpacing: letterSpacing ?? 0,
  );
}


TextStyle bold(
    {Color? color,
      double? fontSize,
      double? letterSpacing,
      FontWeight? fontWeight}) {
  return TextStyle(
    color: color ?? ColorRes.white,
    fontWeight: fontWeight ?? FontWeight.bold,
    fontSize: fontSize ?? 14,
    //fontFamily: FontRes.poppinsSemiBold,
    letterSpacing: letterSpacing ?? 0,
  );
}