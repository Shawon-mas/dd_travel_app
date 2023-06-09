import 'package:dd_travel_app/view/complete_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controller/auth_controller.dart';
import '../custom_widget/custom_text_filed.dart';

class EmailLogin extends StatelessWidget {
  final controller = Get.put(AuthController());

   EmailLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bg2.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Container(
              height: 700,
              width: double.infinity,
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Column(
                    children: [
                      const Text("Email sign in",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 30),
                          textAlign: TextAlign.center),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          height: 2,
                          width: 50,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.w),
                        child: CustomTextField(
                          //    prefixIcon: FontAwesomeIcons.lock,
                          hintText: 'Your email address',
                          controller: controller.emailSignInController,
                          focusNode: controller.userSignInFocus,
                          nextFocus: controller.passwordSignInFocus,
                          inputType: TextInputType.text,
                          isPassword: false,

                        ),
                      ),
                       SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.w),
                        child: CustomTextField(
                          //    prefixIcon: FontAwesomeIcons.lock,
                          hintText: 'Password',
                          controller: controller.passwordSignInController,
                          focusNode: controller.passwordSignInFocus,
                          inputAction: TextInputAction.done,
                          inputType: TextInputType.visiblePassword,
                          isPassword: true,

                        ),
                      ),
                   /*   SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Your email address',
                              labelStyle: TextStyle(color: Colors.white),
                              hintStyle: TextStyle(color: Colors.white),
                              fillColor: HexColor('#7B7E7E').withOpacity(0.8),
                              filled: true,
                              isDense: true,
                              focusColor: HexColor('#08BA64'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'A secure password',
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(color: Colors.white),
                            fillColor: HexColor('#7B7E7E').withOpacity(0.8),
                            filled: true,
                            isDense: true,
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.white,
                            ),
                            focusColor: HexColor('#08BA64'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),*/

                      SizedBox(
                        height: 30,
                      ),
                     Obx(() =>  GestureDetector(
                       onTap: () {
                         //  Get.to(CompleteProfile());
                         controller.checkFieldCheck(context);
                       },
                       child: Container(
                         width: 200,
                         height: 50,
                         decoration: BoxDecoration(
                           //  border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                           borderRadius: BorderRadius.circular(20),
                           color: HexColor('#08BA64'),
                         ),
                         child: controller.isLogin.value
                             ?Center(child: CircularProgressIndicator(color: Colors.white,),)
                             :Center(
                           child: Text(
                             "Continue",
                             style: TextStyle(
                                 fontWeight: FontWeight.w600,
                                 color: Colors.white,
                                 fontSize: 14),
                           ),
                         ),
                       ),
                     )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
