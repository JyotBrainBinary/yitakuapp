import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompleteSignupController extends GetxController{
  bool boxColor = false;
  bool isPassError=false;
  bool isEmailError=false;
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownValue = "One";

  GlobalKey<FormState> formKey =GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
}