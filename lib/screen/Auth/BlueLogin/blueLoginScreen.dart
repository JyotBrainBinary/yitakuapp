import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/Auth/BlueLogin/blueLoginController.dart';
import 'package:yitaku/screen/Auth/Sign%20Up/signUpScreen.dart';
import 'package:yitaku/screen/passwordReset/passwordResetPage.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

import '../../../utils/asset_res.dart';

class BlueLoginScreen extends StatelessWidget {
  const BlueLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlueLoginController blueLoginController = Get.put(BlueLoginController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: blueLoginController.formKey,
        child: SafeArea(
            child: GetBuilder<BlueLoginController>(
                id: "bluelogintextfield",
                builder: (controller) {
                  return Padding(
                    padding: EdgeInsets.only(
                        // left: Get.width * 0.056, right: Get.width * 0.056
                      left: 16,right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.092,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child:
                            Image.asset(AssetRes.yikatuLogo,height: Get.height*0.06,width: Get.width*0.9,),

                        ),
                        SizedBox(
                          height: Get.height * 0.08,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: semiBold(
                                color: ColorRes.black, fontSize: 30),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        Text(
                          StringRes.email,
                          style: regular(
                              fontSize: 14, color: ColorRes.black),
                        ),
                        SizedBox(
                          height: Get.height * 0.016,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value.toString().isEmail == false) {
                              return "Please enter valid email";
                            }
                            return null;
                          },
                          controller: blueLoginController.emailController,
                          decoration: InputDecoration(
                            hintText: StringRes.enterEmail,
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.6,
                              ),
                              borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),


                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),


                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),


                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 0.6,

                              ),
                              borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),


                            ),
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 9),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.016,
                        ),
                        Text(
                          StringRes.password,
                          style: regular(
                              fontSize: 14, color: ColorRes.black),
                        ),
                        SizedBox(
                          height: Get.height * 0.016,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (blueLoginController.passwordController.text
                                    .trim() ==
                                "") {
                              return "Please enter some text";
                            }
                          },
                          obscureText: true,
                          obscuringCharacter: "*",

                          controller: blueLoginController.passwordController,
                          decoration: InputDecoration(
                            hintText: StringRes.enterPassword,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),  borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            enabled: true,
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.6,
                              ),
                              borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 0.6,
                              ),
                              borderRadius:  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 9),
                          ),
                        ),
                        controller.isPassError == true
                            ? Text("Please enter some text")
                            : SizedBox(),
                        SizedBox(
                          height: Get.height * 0.044,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (blueLoginController.formKey.currentState!
                                .validate()) {
                              Get.to(PasswordResetPage());
                              controller.update(["bluelogintextfield"]);
                            }
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: Get.height * 0.051,
                              width: Get.width * 0.32,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorRes.appColor,
                              ),
                              child: Text("Login", style: regular()),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.048,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(PasswordResetPage());
                          },
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                StringRes.forgot,
                                style: regular(
                                    color: ColorRes.black, fontSize: 17,                                textdeco: TextDecoration.underline,
                                ),

                              )),
                        ),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(SignUpScreen());
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              StringRes.doNot,
                              // style: TextStyle(decoration: TextDecoration.underline),
                              style: regular(
                                color: ColorRes.black,
                                fontSize: 17,
                                textdeco: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })),
      ),
    );
  }
}
