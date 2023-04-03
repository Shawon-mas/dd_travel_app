import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../model/user_info_model.dart';
import '../utilites/api_services.dart';
import '../utilites/global_constants.dart';
import '../utilites/response_repository.dart';

class AuthController extends GetxController{
  //sign in text-field controller
  final FocusNode userSignInFocus = FocusNode();
  final FocusNode passwordSignInFocus = FocusNode();

  final TextEditingController emailSignInController = TextEditingController();
  final TextEditingController passwordSignInController = TextEditingController();
  var isLogin = false.obs;

  checkFieldCheck(BuildContext context) {
    if (emailSignInController.text.toString().isEmpty) {
      errorSnackBar(context, "Email Required");
    }else if (passwordSignInController.text.toString().isEmpty) {
      errorSnackBar(context, "Password Required Required");
    } else {
      _login(context);
    }
  }

  void _login(BuildContext context) async{
      isLogin.value=true;
      Map<String, dynamic> body = {
        ApiKeyName.email: emailSignInController.text,
        ApiKeyName.password: passwordSignInController.text,
      };
      var response = await generalPost(url: ApiServices.loginUrl, body: body);
      if(response!=null){
        try{
          isLogin.value=false;
          print(response.body);
          final userProfileData = userInfoModelFromJson(response.body);
          if(userProfileData.user!=null){
            print(userProfileData.user!.name);
          }


        }catch(e){
          if (kDebugMode) {
            print(e.toString());
          }
        }
      }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailSignInController.dispose();
    passwordSignInController.dispose();

  }
}