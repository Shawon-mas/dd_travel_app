
import 'package:dd_travel_app/view/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CompleteProfile extends StatelessWidget {
   CompleteProfile({Key? key}) : super(key: key);

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/bg2.png",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Positioned(
            top: 50,
            left: 0,
            right: 0,

            child: Container(
              height: MediaQuery.of(context).size.height,
              width:double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    SizedBox(
                      height: 30,
                    ),
                    Column(

                      children: [

                        Text("Almost There!",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 30),textAlign: TextAlign.center),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("assets/logo.png",fit: BoxFit.cover,height: 80,width: 80,),
                        SizedBox(
                          height: 20,
                        ),
                       Padding(
                         padding: const EdgeInsets.all(20),
                         child: Column(
                           crossAxisAlignment:CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 5),
                               child: TextFormField(

                                 decoration: InputDecoration(
                                   hintText: 'Full name',
                                   labelStyle: TextStyle(color: Colors.white),
                                   hintStyle: TextStyle(color: Colors.white),
                                   fillColor:HexColor('#7B7E7E').withOpacity(0.8),
                                   filled: true,
                                   isDense: true,
                                   focusColor: HexColor('#08BA64'),
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                       borderSide: BorderSide.none

                                   ),

                                 ),



                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 5)
                               ,child: TextFormField(

                               decoration: InputDecoration(
                                 hintText: 'A secure password',
                                 labelStyle: TextStyle(color: Colors.white),
                                 hintStyle: TextStyle(color: Colors.white),
                                 fillColor:HexColor('#7B7E7E').withOpacity(0.8),
                                 filled: true,
                                 isDense: true,
                                 focusColor: HexColor('#08BA64'),
                                 border: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(30),
                                     borderSide: BorderSide.none

                                 ),

                               ),
                             ),
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 5),
                               child: TextFormField(

                                 decoration: InputDecoration(
                                   hintText: 'A secure password',
                                   labelStyle: TextStyle(color: Colors.white),
                                   hintStyle: TextStyle(color: Colors.white),
                                   fillColor:HexColor('#7B7E7E').withOpacity(0.8),
                                   filled: true,
                                   isDense: true,
                                   focusColor: HexColor('#08BA64'),
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                       borderSide: BorderSide.none

                                   ),

                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 5),
                               child: TextFormField(

                                 decoration: InputDecoration(
                                   hintText: 'A secure password',
                                   labelStyle: TextStyle(color: Colors.white),
                                   hintStyle: TextStyle(color: Colors.white),
                                   fillColor:HexColor('#7B7E7E').withOpacity(0.8),
                                   filled: true,
                                   isDense: true,
                                   focusColor: HexColor('#08BA64'),
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(30),
                                       borderSide: BorderSide.none

                                   ),

                                 ),
                               ),
                             ),
                             SizedBox(
                               height: 20,
                             ),
                             Text("What do you prefer?",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 18),),
                             SizedBox(
                               height: 20,
                             ),

                             Container(
                               decoration: BoxDecoration(
                                 //  border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                                 borderRadius: BorderRadius.circular(20),
                                 color: Colors.grey,

                               ),
                               padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                               child: Text("Mountains"),
                             ),
                             SizedBox(
                               height: 20,
                             ),
                             Row(
                               children: [
                                 Text("Enable location for better experience",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 16),),
                                 SizedBox(
                                   width: 20,
                                 ),
                                 Switch(
                                   activeColor: HexColor('#08BA64'),
                                   value: isSwitched,
                                   onChanged: (value) {


                                   },
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),
                        GestureDetector(
                          onTap: (){
                             Get.to(HomePage());
                          },
                          child: Container(

                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              //  border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20),
                              color:HexColor('#08BA64'),

                            ),

                            child: Center(
                              child: Text("Continue",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.white,fontSize: 14),),
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
              ),
            ),)


        ],
      ),

    );
  }
}
