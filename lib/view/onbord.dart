import 'package:dd_travel_app/view/social_media_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

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

                      Text("Welcome to the\nworld of Discounts",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 30),textAlign: TextAlign.center),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Make your travel simple. Get awesome deals and save \nmore than 60% of travel cost! Enjoy your Traveling!",style: TextStyle(color: Colors.white,fontSize: 12),textAlign: TextAlign.center),

                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Container(
                          height: 2,
                          width: 100,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(SocialMediaLogIn());
                        },
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:HexColor('#08BA64')
                          ),

                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Get Started Now",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 16),),SizedBox(width: 10,),Icon(Icons.arrow_forward, color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],),
                ],
              ),
            ),)


        ],
      ),

    );
  }
}
