
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 1000, color: Colors.red,
            ),
          ),

          Positioned(
              top: 0,
              child: Image.asset("assets/explore_bg.jpg",height: 200,width: MediaQuery.of(context).size.width,fit: BoxFit.fitWidth,)),
          Positioned(

              top: 190,
              right: 0,
              left: 0,


              child: Container(
                height: MediaQuery.of(context).size.height,

                decoration: BoxDecoration(
                  color: HexColor("#F7F7F7"),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:  Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child:Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex:1,
                                      child: CircularPercentIndicator(

                                    radius: 40.0,
                                    lineWidth: 5.0,
                                  //  percent: 1.0,
                                    percent: 0.8,
                                    center: new Text("80%"),
                                    progressColor: Colors.green,
                                  )),
                                  Expanded(
                                      flex:1,
                                      child: Container(child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("12",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
                                      Text("discounts \nclaimed")
                                    ],
                                  ),)),
                                  Expanded(
                                      flex:1,
                                      child: Container(child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("45k+",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
                                      Text("taka saved\ntraveling")
                                    ],
                                  ),)),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green
                              ),

                              child: Text("Buy Subscription",style: TextStyle(color: Colors.white),),
                            )

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My Discount",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  Text("Show all"),
                        ],
                      ),
                      Expanded(

                        child: discount(),
                      )

                    ],
                  ),
                ),
              )),
          Positioned(
              top: 130,
              left: 25,
              right: 25,
              child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white
               ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("John Smith",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 5,
                ),
                Text("#83GHGNV",style: TextStyle(fontSize: 14,color: Colors.green),),
                SizedBox(
                  height: 5,
                ),
                Text("Dhaka, Bangladesh",style: TextStyle(fontSize: 14,color: Colors.grey),),
                SizedBox(
                  height: 20,
                )


              ],
            ),
            height: 140,
            width: 300,
          )),
          Positioned(
              top:80,
              right: 0,
              left: 0,
              child: Image.asset("assets/man.png",height: 100,))
        ],
      ),
    );
  }
  discount(){
    return ListView.builder(
      itemCount:5 ,
       scrollDirection: Axis.vertical,
      itemBuilder: (context, index) =>  Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Stack(
          children: [
            Card(
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Row(
                  children: [
                    Expanded(
                        flex:1,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                            child: Image.asset("assets/hotel.png",height: MediaQuery.of(context).size.height,fit: BoxFit.cover,))


                    ),

                    Expanded(
                      flex:2,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Couple Room",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                            SizedBox(
                              height: 5,
                            ),
                            Text("Srigal Hotel",style: TextStyle(fontSize: 14,color: Colors.grey)),

                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [

                                    Text("12 Dec",style: TextStyle(fontSize: 14,color: Colors.grey)),
                                    Text("Pending",style: TextStyle(fontSize: 14,color: Colors.grey)),
                                    Text("6000Tk",style: TextStyle(fontSize: 14,color: Colors.green,fontWeight: FontWeight.bold)),

                                  ],
                                )
                              ],
                            )


                          ],


                        ),
                      ),
                    ),


                  ],
                ),

              ),
            ),
            Positioned(
                right: 20,
                child: Stack(
                  children: [
                    Image.asset("assets/discount.png"),
                    Positioned(
                        top: 8,
                        left: 5,
                        child: Text("50%",style: TextStyle(fontSize: 12,color: Colors.white),))
                  ],
                ))
          ],
        ),
      ),);
  }
}
