import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/createAccount/create_account_controller.dart';
import 'package:yitaku/screen/passwordReset/passwordResetPage.dart';
import 'package:yitaku/utils/asset_res.dart';

import '../../../common/widget/text_style.dart';
import '../../../utils/StringRes.dart';
import '../../../utils/colorRes.dart';

class CreateaccountScreen extends StatelessWidget {
  const CreateaccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CreateAccountController createAccountController =
        Get.put(CreateAccountController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: createAccountController.formKey,
        child: SafeArea(
            child: GetBuilder<CreateAccountController>(
                id: "createaccount",
                builder: (controller) {
                  return Padding(
                    padding: EdgeInsets.only(
                      // left: Get.width * 0.056, right: Get.width * 0.056
                      left: 16, right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.092,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            AssetRes.yikatuLogo,
                            height: Get.height * 0.06,
                            width: Get.width * 0.9,
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.08,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            StringRes.createAccount,
                            style:
                                regular(color: ColorRes.black, fontSize: 36,fontWeight: FontWeight.w600,),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.04,
                        ),
                        Text(
                          StringRes.email,
                          style: regular(fontSize: 14, color: ColorRes.black),
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
                          controller: createAccountController.emailController,
                          decoration: InputDecoration(
                            hintText: StringRes.enterEmail,
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.6,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 0.6,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
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
                          style: regular(fontSize: 14, color: ColorRes.black),
                        ),
                        SizedBox(
                          height: Get.height * 0.016,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (createAccountController.passwordController.text
                                    .trim() ==
                                "") {
                              return "Please enter some text";
                            }
                          },
                          obscureText: true,
                          obscuringCharacter: "*",
                          controller:
                              createAccountController.passwordController,
                          decoration: InputDecoration(
                            hintText: StringRes.enterPassword,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            enabled: true,
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.6,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 0.6,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 9),
                          ),
                        ),
                        controller.isPassError == true
                            ? Text("Please enter some text")
                            : SizedBox(),
                        SizedBox(
                          height: Get.height * 0.040,
                        ),
                        Row(
                          children: [
                            SizedBox(width: Get.width*0.02,),
                            Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                value: createAccountController.isChecked,
                                onChanged: (value) {
                                  createAccountController.isChecked = value!;
                                  controller.update(['createaccount']);
                                },
                                checkColor: ColorRes.appColor,
                                activeColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                side: MaterialStateBorderSide.resolveWith(
                                    (states) => BorderSide(
                                        width: 1, color: ColorRes.appColor)),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.040,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                StringRes.iHave,

                                textAlign: TextAlign.start,

                              style:   regular(
                                  color: ColorRes.black,
                                  fontSize: 17,

                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.040,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (createAccountController.formKey.currentState!
                                .validate()) {
                              Get.to(PasswordResetPage());
                              controller.update(["createaccount"]);
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
                              child: Text("Sign up", style: regular(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.028,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            StringRes.read,
                            style: regular(
                              color: ColorRes.black,
                              fontSize: 19,
                              textdeco: TextDecoration.underline,
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
