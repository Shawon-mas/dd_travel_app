
import 'package:dd_travel_app/view/sign_in_with_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SocialMediaLogIn extends StatelessWidget {
  const SocialMediaLogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/bg1.png",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Positioned(
            top: 50,
            left: 0,
            right: 0,

            child: Container(
              height: 700,
              width:double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Image.asset("assets/logo.png",fit: BoxFit.cover,height: 80,width: 80,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [

                      Text("Sign in to DD",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 30),textAlign: TextAlign.center),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          height: 2,
                          width: 50,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: [
                          Container(

                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(30),
                              color: HexColor('#7B7E7E').withOpacity(0.5),


                            ),
                            child: Center(
                              child: Text("Continue with Google",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 14),),
                            ),
                          ),
                         Container(
                           decoration: BoxDecoration(
                             color: HexColor('#E1E2E2'),
                             borderRadius: BorderRadius.circular(100)
                           ),
                           height: 50,
                           width: 50,
                           child:  ClipRRect(
                             borderRadius: BorderRadius.circular(100),
                               child: Image.asset("assets/google.png",height: 5,width: 5,fit: BoxFit.cover,)),
                         )
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      Stack(
                        children: [
                          Container(

                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(30),
                              color: HexColor('#7B7E7E').withOpacity(0.5),


                            ),
                            child: Center(
                              child: Text("Continue with Facebook",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 14),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('#E1E2E2'),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            height: 50,
                            width: 50,
                            child:  ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset("assets/facebook.png",height: 5,width: 5,fit: BoxFit.cover,)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Stack(
                        children: [
                          Container(

                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(30),
                              color: HexColor('#7B7E7E').withOpacity(0.5),


                            ),
                            child: Center(
                              child: Text("Continue with Apple",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 14),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('#E1E2E2'),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            height: 50,
                            width: 50,
                            child:  ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset("assets/apple.png",height: 5,width: 5,fit: BoxFit.cover,)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      GestureDetector(
                        onTap: (){
                          Get.to(EmailLogin());
                        },
                        child: Container(

                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20),

                          ),

                          child: Center(
                            child: Text("Continue with Email",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 14),),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Text("Skip for now",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 14),),
                      SizedBox(
                        height: 20,
                      )
                    ],),
                ],
              ),
            ),)


        ],
      ),

    );
  }

  box(){
    return Container(

      width: 200,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20),

      ),

      child: Center(
        child: Text("Continue with Email",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 14),),
      ),
    );
  }
}
Widget socialmediaContainer({required String title,required String img}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      height: 60.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Card(

        color: HexColor("#E8F6F9"),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical:5),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(img,height: 40,width: 40,)),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp, color: Colors.black),

              ),
            ],
          ),
        ),
      ),
    ),
  );
}