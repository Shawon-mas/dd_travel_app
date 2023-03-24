
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HotelsDetails extends StatelessWidget {
  const HotelsDetails({Key? key}) : super(key: key);

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
              child: Image.asset("assets/hotel.png",height: 300,fit: BoxFit.cover,)),
          Positioned(

              top: 230,
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
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                          Row(children: [
                            Icon(Icons.star,color: Colors.amber,),
                            SizedBox(width: 5,),
                            Text("4.8")

                          ],),
                          Container(
                            height: 30,
                            width: 40,
                            color: Colors.white,
                            child: Image.asset("assets/youtue.png"),
                          )

                        ],),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Seagull Hotel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,size: 15,),
                                SizedBox(width: 5,),
                                Text("Coxbazar",style: TextStyle(fontSize: 14,color: Colors.grey)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Aura Raja Ampat Dive Resort is a hotel in a good neighborhood, which is located at...",style: TextStyle(color: Colors.grey),),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Read More...",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),


                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Available Offers",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                              Text("Change Date"),
                            ],
                          ),
                          Text("more")
                        ],),
                        Container(
                          height: 270,
                          child: room(),
                        ),

                        Text("Services",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 10,
                        ),

                        Row(children: [
                          Image.asset("assets/tik.png"),
                           Text("Laundry Service"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Letest View",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                           Icon(Icons.arrow_forward)
                         ],
                       ),
                        SizedBox(
                          height: 10,
                        ),

                        Container(
                          height: 200,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.grey,width: 2,style: BorderStyle.solid)
                         ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/man.png",height: 50,width: 50,),
                                        Column(
                                          children: [
                                            Text("data"),
                                            Row(
                                              children: [
                                                Icon(Icons.star,size: 10,color: Colors.amber,),
                                                Icon(Icons.star,size: 10,color: Colors.amber,),
                                                Icon(Icons.star,size: 10,color: Colors.amber,),
                                                Icon(Icons.star,size: 10,color: Colors.amber,),
                                                Icon(Icons.star,size: 10,color: Colors.amber,),
                                              ],
                                            )

                                          ],
                                        )
                                      ],
                                    ),Text("10 Fe 2009")
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Very good hotel. It gave an amazing service, quality and discounts were awesome. Very good hotel. It gave an amazing service, qualityand discounts were awesome...")
                              ],
                            ),
                          ),

                        ),






        ],
      ),
                  ),)))])
    );
  }
  room(){
    return ListView.builder(
      itemCount:2 ,
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

