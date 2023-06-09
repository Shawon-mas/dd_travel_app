import 'package:dd_travel_app/view/hotel/hotel_dtls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

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

              top: 170,
              right: 0,
              left: 0,


              child: Container(
                height: 1000,

                decoration: BoxDecoration(
                    color: HexColor("#F7F7F7"),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:  Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              width: 250,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:Colors.white
                              ),

                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10,),
                                    Icon(Icons.date_range, color: Colors.grey,size: 18,),
                                    SizedBox(width: 10,),
                                    Text("21 Nov - 1 Dec",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.grey,fontSize: 16),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 50,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.search,color: Colors.grey,),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 50,
                            width: 45,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.stacked_line_chart_sharp,color: Colors.grey,),
                          ),

                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Center(
                        child: Container(
                          height: 1,
                          width: 350,
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                     Container(
                       height: 55,
                       child: catagories(),
                     ),
                      SizedBox(
                        height: 500,
                        child: popular(),
                      ),
                      SizedBox(
                        height: 50,
                      )




                    ],
                  ),
                ),
              )),
          Positioned(
            top: 140,
            right: 25,
            left: 25,
            child: Row(
              children: [
                Container(
                  width: 280,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: Colors.white

                  ),

                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 5,),
                      Icon(Icons.location_on_outlined,color: Colors.grey,),
                        SizedBox(width: 10,),
                        Text("Select Destination",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.grey,fontSize: 16),),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color:HexColor('#08BA64'),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Icons.map,color: Colors.white,),
                )
              ],
            ),),
          Positioned(
              top: 50,
              left: 25,
              child: Text("Where do \nyou wanna go?",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
          Positioned(
              top: 50,
              right: 25,
              child: Image.asset("assets/rainny.png"))

        ],
      ),
    );
  }
  catagories(){
    return ListView.builder(
      itemCount:5 ,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          height: 20,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset("assets/flight1.png",height: 20,),
                Text("Hotel/Resort")
              ],
            ),
          ),
        ),
      ) );
  }
  popular(){
    return ListView.builder(
      //  physics: AlwaysScrollableScrollPhysics(),
      itemCount:5 ,
      // scrollDirection: Axis.vertical,
      itemBuilder: (context, index) =>  Stack(
        children: [
          GestureDetector(
            onTap: (){

              Get.to(HotelsDetails());

            },
            child: Card(
              child: Container(
                height: 160,
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
                            Text("Seagull Hotel",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,size: 15,),
                                SizedBox(width: 5,),
                                Text("Coxbazar",style: TextStyle(fontSize: 12,color: Colors.grey)),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    //  border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey[200],

                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                  child: Text("Hotel",style: TextStyle(fontSize: 12,color: Colors.grey)),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  decoration: BoxDecoration(
                                    //  border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey[200],

                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                  child: Text("Resturant",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                        Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                        Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                        Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                        Icon(Icons.star,size: 15,color: Colors.amberAccent,),
                                      ],
                                    ),
                                    Text("131 Reviews",style: TextStyle(fontSize: 12,color: Colors.grey))

                                  ],
                                ),Column(
                                  children: [

                                    Text("Avaiable Offer",style: TextStyle(fontSize: 12,color: Colors.grey)),
                                    Text("6000Tk",style: TextStyle(fontSize: 18,color: Colors.green,fontWeight: FontWeight.bold)),
                                    Text("12000Tk",style: TextStyle(fontSize: 12,color: Colors.green,))
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
          ),
          Positioned(
              right: 20,
              child: Stack(
                children: [
                  Image.asset("assets/discount.png"),
                  Positioned(
                      top: 8,
                      left: 5,


                      child: Text("20%",style: TextStyle(fontSize: 12,color: Colors.white),))
                ],
              ))
        ],
      ),);
  }
}
